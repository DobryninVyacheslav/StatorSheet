package ru.building.sheet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ptc.cipjava.jxthrowable;
import com.ptc.pfc.pfcSolid.Solid;

import ru.data.DataStore;
import ru.general.ModelFeat;
import ru.ruselprom.fet.round.RadiusAndEdgeIndices;
import ru.ruselprom.fet.round.Round;

public final class BasicSheet extends Sheet {
	
	private static final Logger LOG = LoggerFactory.getLogger(BasicSheet.class);
	
	public BasicSheet(Solid currSolid) {
		super(currSolid);
	}
	
	@Override
	public void build() {
		try {
			buildSheetBody();
			buildSlot(ModelFeat.EXT_SLOT, ModelFeat.SLOT);
			buildSlotPatternWithRoundOrNot(DataStore.isSlotWithRound(), ModelFeat.AR_SLOT, ModelFeat.EXT_SLOT);
			LOG.info("BasicSheet is built");
		} catch (NullPointerException e) {
			LOG.error("Error in creating BasicSheet!", e);
		}
	}

	@Override
	protected void buildRound() {
		try {
			int[] firstEdgeIndices = {48,49,54,61};
			int[] secondEdgeIndices = {55,56,59,60};
			int[] thirdEdgeIndices = {57,58};
			Round round = new Round();
			RadiusAndEdgeIndices firstSetOfRounds = new RadiusAndEdgeIndices(DataStore.getRoundAtTopOfSlot(), firstEdgeIndices);
			RadiusAndEdgeIndices secondSetOfRounds = new RadiusAndEdgeIndices(DataStore.getRoundWedgeOfSlot(), secondEdgeIndices);
			RadiusAndEdgeIndices thirdSetOfRounds = new RadiusAndEdgeIndices(DataStore.getRoundAtBottomOfSlot(), thirdEdgeIndices);
			RadiusAndEdgeIndices[] setsOfRounds = {firstSetOfRounds, secondSetOfRounds, thirdSetOfRounds};
			round.build(ModelFeat.ROUND.name(), ModelFeat.EXT_SLOT.name(), currSolid, setsOfRounds);
		} catch (jxthrowable e) {
			LOG.error("Error building round", e);
		}
	}
}

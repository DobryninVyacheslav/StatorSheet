package ru.assignment.screw;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ptc.cipjava.jxthrowable;
import com.ptc.pfc.pfcSolid.Solid;

import ru.assignment.DimAssignment;
import ru.externaldata.DataStore;
import ru.general.ModelFeat;

public class Screw06DimAssignment extends DimAssignment {

	public Screw06DimAssignment(Solid currSolid) {
		super(currSolid);
	}

	private static final Logger LOG = LoggerFactory.getLogger(Screw06DimAssignment.class);
	
	@Override
	public void assign() {
		try {
			Map<Integer, Double> screwSolidIndexAndValue = new HashMap<>();
			screwSolidIndexAndValue.put(0, DataStore.getScrew06Wdth());
			screwSolidIndexAndValue.put(1, DataStore.getExtDiam()/2);
			screwSolidIndexAndValue.put(2, 360.0 / DataStore.getSegmQty() / 2);
			setArrayOfDimValue(ModelFeat.SCREW_06_HOLE, screwSolidIndexAndValue);
			setDimValue(ModelFeat.MARK, 2, 
					DataStore.getMarkShift() + DataStore.getExtDiam()/2 - 
					Math.sqrt(Math.pow(DataStore.getExtDiam()/2, 2) - 
					Math.pow(DataStore.getScrew06Wdth()/2, 2)));
			LOG.info("Dimensions for the Screw06 assigned");
		} catch (jxthrowable e) {
			LOG.error("Error assigning dimensions to the Screw_06", e);
		}
	}
}

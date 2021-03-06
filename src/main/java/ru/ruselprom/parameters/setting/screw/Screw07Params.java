package ru.ruselprom.parameters.setting.screw;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ptc.cipjava.jxthrowable;
import com.ptc.pfc.pfcModel.Model;

import ru.ruselprom.data.DataStore;
import ru.ruselprom.parameters.ModelParamNames;
import ru.ruselprom.parameters.Parameters;
import ru.ruselprom.parameters.setting.ParamsSetting;

public class Screw07Params implements ParamsSetting {
	
	private static final Logger LOG = LoggerFactory.getLogger(Screw07Params.class);
	private double screwShift;
	
	public Screw07Params(double screwShift) {
		this.screwShift = screwShift;
	}

	@Override
	public void setValue(Model currModel) {
		try {
			Parameters.setBoolParamValue(ModelParamNames.AA_STATOR_CORE_SCREW_07_EXIST.name(), true, currModel);
			Parameters.setDoubleParamValue(ModelParamNames.AA_STATOR_CORE_SCREW_07_WDTH.name(), DataStore.getScrew07Wdth(), currModel);
			Parameters.setDoubleParamValue(ModelParamNames.AA_STATOR_CORE_SCREW_07_HGHT.name(), DataStore.getScrew07Hght(), currModel);
			Parameters.setDoubleParamValue(ModelParamNames.AA_STATOR_CORE_SCREW_07_SHIFT.name(), Math.toRadians(screwShift), currModel);
			Parameters.setDoubleParamValue(ModelParamNames.AA_STATOR_CORE_SCREW_07_NECK.name(), DataStore.getScrew07NeckWdth(), currModel);
			int screwQty;
			if (DataStore.getTypeOfScrew() / 10 == 0) {
				screwQty = DataStore.getTotalScrewQty();
			} else {
				screwQty = DataStore.getTotalSecondScrewQty();
			}
			Parameters.setDoubleParamValue(ModelParamNames.AA_STATOR_CORE_SCREW_07_QTY.name(), screwQty, currModel);
			LOG.info("Screw07 parameters set");
		} catch (NullPointerException | jxthrowable e) {
			LOG.error("Error in setting Screw07 parameters", e);
		}
	}

}

// jsMakeBulkBundleArray
  var newData = [];
  table14.recordUpdates.forEach((emp, index) => {
      newData.push({
        calloff_id: emp.calloff_id,
        sch_ack: emp.sch_ack

    });
});
return newData
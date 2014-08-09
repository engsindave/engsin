$(document).ready(function () {
    var openPositions = [
        {
            name: 'Coining Operator',
            url: 'https://home2.eease.adp.com/recruit/?id=12434372'
        },
        {
            name: 'Compacting Operator',
            url: 'https://home2.eease.adp.com/recruit/?id=12434352'
        },
        {
            name: 'Heat Treat Operator',
            url: 'https://home2.eease.adp.com/recruit/?id=12434392'
        },
        {
            name: 'Lab Technician',
            url: 'https://home2.eease.adp.com/recruit/?id=12434022'
        },
        {
            name: 'Maintenance Tech',
            url: 'https://home2.eease.adp.com/recruit/?id=12434362'
        }
    ];

    var applicablePositions = [
        {
            name: 'Accounts Payable',
            url: 'https://home2.eease.adp.com/recruit/?id=4763152'
        },
        {
            name: 'Application Engineer',
            url: 'https://home2.eease.adp.com/recruit/?id=4763142'
        },
        {
            name: 'Machine Operator',
            url: 'https://home2.eease.adp.com/recruit/?id=12434382'
        }
    ];

    var byPositionName = function (a, b) {
        if (a.name > b.name) {
            return 1;
        }

        if (a.name < b.name) {
            return -1;
        }

        return 0;
    };

    applicablePositions = openPositions.concat(applicablePositions);
    applicablePositions.sort(byPositionName);

    var openList = '';
    var applicableList = '';

    for (var i = 0; i < openPositions.length; i++) {
        openList += '<li><a href="' + openPositions[i].url + '">' + openPositions[i].name + '</a></li>';
    }

    for (var j = 0; j < applicablePositions.length; j++) {
        applicableList += '<li><a href="' + applicablePositions[j].url + '">' + applicablePositions[j].name + '</a></li>';
    }

    $('.open-positions').append(openList);
    $('.applicable-positions').append(applicableList);
});
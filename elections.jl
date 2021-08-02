# elections

# Returns election objects and composite of elections based on the state

# Created by Charlie Murphy
# Based on Python code by Dinos Gonatas

function get_election_info(state, districts)

    # Pennsylvania
    if state == "PA"
        elections = [
            Election("SEN18", ["G18DemSen", "G18RepSen"], districts),
            Election("GOV18", ["G18DemGov", "G18RepGov"], districts),
            Election("SEN10", ["SEN10D", "SEN10R"], districts),
            Election("SEN12", ["USS12D", "USS12R"], districts),
            Election("SEN16", ["T16SEND", "T16SENR"], districts),
            Election("PRES12", ["PRES12D", "PRES12R"], districts),
            Election("PRES16", ["T16PRESD", "T16PRESR"], districts),
            Election("GOV10", ["GOV10D", "GOV10R"], districts),
            Election("GOV14", ["F2014GOVD", "F2014GOVR"], districts),
            Election("ATG12", ["ATG12D", "ATG12R"], districts),
            Election("ATG16", ["T16ATGD", "T16ATGR"], districts)
        ]
        composite = ["SEN10", "SEN12", "SEN16", "PRES12", "PRES16", "GOV10",
            "GOV14", "ATG12", "ATG16", "SEN18", "GOV18"]

    # Texas
    elseif state == "TX"
        elections = [
            Election("SEN14", ["SEN14D", "SEN14R"], districts),
            Election("SEN12", ["SEN12D", "SEN12R"], districts),
            Election("GOV14", ["GOV14D", "GOV14R"], districts),
            Election("PRES12", ["PRES12D", "PRES12R"], districts),
            Election("PRES16", ["PRES16D", "PRES16R"], districts)
        ]
        composite = ["SEN14", "SEN12", "PRES12", "PRES16", "GOV14"]

    # Wisconsin
    elseif state == "WI"
        elections = [
            Election("SEN16", ["USSDEM16", "USSREP16"], districts),
            Election("WAG14", ["WAGDEM14", "WAGREP14"], districts),
            Election("SEN12", ["USSDEM12", "USSREP12"], districts),
            Election("GOV14", ["GOVDEM14", "GOVREP14"], districts),
            Election("GOV12", ["GOVDEM12", "GOVREP12"], districts),
            Election("SOS14", ["SOSDEM14", "SOSREP14"], districts),
            Election("PRES12", ["PREDEM12", "PREREP12"], districts),
            Election("PRES16", ["PREDEM16", "PREREP16"], districts),
            Election("GOV18", ["GOV18D", "GOV18R"], districts),
            Election("SEN18", ["SEN18D", "SEN18R"], districts)
            ]
        composite = ["SEN16", "SEN12", "PRES12", "PRES16", "GOV14", "GOV12",
            "AG14", "SOS14", "GOV18", "SEN18", "AG18"]

    # Georgia
    elseif state == "GA"
        elections = [
            Election("PRES16", ["PRES16D", "PRES16R"], districts),
            Election("SEN16", ["SEN16D", "SEN16R"], districts)
        ]
        composite = ["PRES16", "SEN16"]

    # Michigan
    elseif state == "MI"
        elections = [
            Election("PRES16", ["PRES16D", "PRES16R"], districts)
        ]
        composite = ["PRES16"]

    # North Carolina
    elseif state == "NC"
        elections = [
            Election("EL12G_PR_", ["EL12G_PR_D", "EL12G_PR_R"], districts),
            Election("EL16G_PR_", ["EL16G_PR_D", "EL16G_PR_R"], districts),
            Election("EL16G_US", ["EL16G_US_1", "EL16G_USS_"], districts),
            Election("EL16G_GV_", ["EL16G_GV_D", "EL16G_GV_R"], districts),
            Election("EL12G_GV_", ["EL12G_GV_D", "EL12G_GV_R"], districts),
            Election("EL14G_US", ["EL14G_US_1", "EL14G_USS_"], districts)
        ]
        composite = ["EL12G_PR_","EL16G_PR_","EL16G_US","EL16G_GV_","EL12G_GV_",
            "EL14G_US"]

    # Florida
    elseif state == "FL"
        elections = [
            Election("SEN16", ["Dem_2016_s", "Rep_2016_s"], districts),
            Election("PRES16", ["Dem_2016_p", "Rep_2016_p"], districts)
        ]
        composite = ["SEN16","PRES16"]

    # Massachusetts
    elseif state == "MA"
        elections = [
            Election("SEN14", ["SEN14D", "SEN14R"], districts),
            Election("SEN12", ["SEN12D", "SEN12R"], districts),
            Election("SEN13", ["SEN13D", "SEN13R"], districts),
            Election("SEN18", ["SEN18D", "SEN18R"], districts),
            Election("GOV14", ["GOV14D", "GOV14R"], districts),
            Election("GOV18", ["GOV18D", "GOV18R"], districts),
            Election("PRES16", ["PRES16D", "PRES16R"], districts),
            Election("PRES12", ["PRES12D", "PRES12R"], districts)
        ]
        composite = ["SEN14","PRES16", "SEN12", "SEN13", "PRES12", "GOV14",
            "GOV18","SEN18"]

    # Maryland
    elseif state == "MD"
        elections = [
            Election("SEN18", ["SEN18D", "SEN18R"], districts),
            Election("SEN12", ["SEN12D", "SEN12R"], districts),
            Election("SEN16", ["SEN16D", "SEN16R"], districts),
            Election("GOV18", ["GOV18D", "GOV18R"], districts),
            Election("AG18", ["AG18D", "AG18R"], districts),
            Election("GOV14", ["GOV14D", "GOV14R"], districts),
            Election("AG14", ["AG14D", "AG14R"], districts),
            Election("PRES16", ["PRES16D", "PRES16R"], districts),
            Election("PRES12", ["PRES12D", "PRES12R"], districts)
        ]
        composite = ["SEN12","SEN16", "SEN18","PRES16","PRES12","GOV18","GOV14","AG18","AG14"]

    # Ohio
    elseif state == "OH"
        elections = [
            Election("PRES16", ["PRES16D", "PRES16R"], districts),
            Election("SEN16", ["SEN16D", "SEN16R"], districts),
            Election("USH16", ["USH16D", "USH16R"], districts),
            Election("SSEN16", ["SSEN16D", "SSEN16R"], districts),
            Election("STH16", ["STH16D", "STH16R"], districts),
            Election("GOV18", ["G18GOVDCOR", "G18GOVRDEW"], districts),
            Election("ATG18", ["G18ATGDDET", "G18ATGRYOS"], districts),
            Election("SOS18", ["G18SOSDCLY", "G18SOSRLAR"], districts),
            Election("AUD18", ["G18AUDDSPA", "G18AUDRFAB"], districts),
            Election("TRE18", ["G18GOVDCOR", "G18GOVRDEW"], districts),
            Election("SEN18", ["G18TREDRIC", "G18TRERSPR"], districts),

            Election("PRES20", ["G20PREDBID", "G20PRERTRU"], districts)
        ]
        composite = ["PRES16", "SEN16", "USH16", "SSEN16", "STH16", "GOV18",
            "ATG18", "SOS18", "AUD18", "TRE18", "SEN18", "PRES20"]
    end

    return elections, composite
end

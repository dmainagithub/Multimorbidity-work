// drop if patientid==""
drop if patientid=="12882/18"
destring patientid, replace


foreach diag in "DENTAL CAVITIES" "DENTAL CAVITIY" "DENTAL CAVITY" "DENTAL CAVITY" {
    replace diagnoses = "Dental cavities" if diagnoses == "`diag'"
}

foreach diag in "DENTAL CARIES" "DENTAL CARRIERS" "DENTAL CARRIES" {
    replace diagnoses = "3" if diagnoses == "`diag'"
}
foreach diag in "FAMILY PLANNING" {
    replace diagnoses = "4" if diagnoses == "`diag'"
}

foreach diag in "DIABETES" {
    replace diagnoses = "5" if diagnoses == "`diag'"
}

foreach diag in "HYPERTENSION" {
    replace diagnoses = "6" if diagnoses == "`diag'"
}

foreach diag in "MASTITIS" {
    replace diagnoses = "7" if diagnoses == "`diag'"
}

foreach diag in "DERMATITIS" {
    replace diagnoses = "8" if diagnoses == "`diag'"
}

foreach diag in "ASTHIMA" "ASTHMA" "ASTHMA ATTACK" "ASTHMATIC" {
    replace diagnoses = "9" if diagnoses == "`diag'"
}

foreach diag in "ABDOMINAL PAIN" "ABD PAIN" "ABD PAINS" "LOWER ABDOMINAL PAIN" {
    replace diagnoses = "10" if diagnoses == "`diag'"
}

foreach diag in "ACUTE TONSILITIS" "ACUTE TONSILLITIS" {
    replace diagnoses = "11" if diagnoses == "`diag'"
}

foreach diag in "V.CANDIASIS" "VAGINAL CANDIDIASIS" "V. CANDIDIASIS" "V,CANDIDIASIS" "V.CANDIDASIS " "V.CANDIDASIS " "V.CANDIDIASIS " "V.CANDINDIASIS " "V CADIASIS" "CANDIASIS" "CANDIDIASIS" "CANDINDIASIS" "CADIDIASIS" "VALVOVAGINA  CANDIDIASIS" "VANGINITIS" "VAGINITIS" "V CANDIDIAS" "Vaginal Candidiasis" {
    replace diagnoses = "14" if diagnoses == "`diag'"
}

foreach diag in "UTI" "ACUTE UTI" "URINARY TRACT INFECTION" "URINARY TRACT INFECTION`" "URINARY TRACT INFECTIONS" "UTI  IN PREGNANCY" "UTI IN PG" {
    replace diagnoses = "15" if diagnoses == "`diag'"
}

foreach diag in "TYPHOID FEVER" {
    replace diagnoses = "17" if diagnoses == "`diag'"
}

foreach diag in "ASSAULT" {
    replace diagnoses = "18" if diagnoses == "`diag'"
}

foreach diag in "WOUND" {
    replace diagnoses = "19" if diagnoses == "`diag'"
}

foreach diag in "UTI IN PREGNACY" {
    replace diagnoses = "20" if diagnoses == "`diag'"
}

foreach diag in "DIAHRREAH" "DIARHOEA" "DIARREAH" "DIARREHEA" "DIARRHEA" "DIARRHOEA" "DIARRHOEA IN CHOLERA" "DIARROHEA" {
    replace diagnoses = "21" if diagnoses == "`diag'"
}

foreach diag in "TONSILITIS" {
    replace diagnoses = "22" if diagnoses == "`diag'"
}
// Pharyngitis is the inflammation of the mucous membranes of the oropharynx.
foreach diag in "PHAHGITIS" "PHANGATIS" "PHANGETIS" "PHANGITIS" "PHANYNGITIS" "PHARANGITIS" "PHARINGITIS" "PHARNAGITIS" "PHARNGITIS" "PHARYGITIS" "PHARYGNITIS" "PHARYLILIS" "PHARYNGITIS" "PHARYNGITIS TONSILAR" "PHARYNGITITIS" "PHARYNGO-TONSILLITIS" "PHARYNGOLARYNGITIS" "PHARYNGOTONSILLITIS" "PHARYRGITIS" "PHERIGITIS" "PHERYNGITIS" "PHRANGARITITIS" "PHRANGITIS" "ACUTE PHANGITIS" "ACUTE PHARANGITIS" "ACUTE PHARYGITIS" "ACUTE PHARYNGITIS" "ACUTE PHRYNGITITIS" {
    replace diagnoses = "23" if diagnoses == "`diag'"
}
// Comment: Am i doing service to "LOWER RESPIRATORY TRACT INFECTION" "LRTI"
foreach diag in "REPIRATORY TRACT INFECTION" "RESPIRATORY TRACK INFECTION" "RESPIRATORY TRACT INFECTION" "RESPIRATORY TRACT INFECTIONS" "RESPIRTAORY TRACT INFECTION" "RESTPIRATORY TRACT INFECTION" "RES[IRATORY TRACT INFECTION" "LOWER RESPIRATORY TRACT INFECTION" "LRTI" {
    replace diagnoses = "24" if diagnoses == "`diag'"
}

foreach diag in "MYALGIA" {
    replace diagnoses = "25" if diagnoses == "`diag'"
}

foreach diag in "NEUROPATHY" "PERIPHARAL NUMBNESS" "PERIPHERAL" "PERIPHERAL NEROPATHY" "PERIPHERAL NEROUPATHY" "PERIPHERAL NEUROPATHY" "PERIPHERIAL NEUMPATHY" "PERIPHERIAL NEUROPATHY" "PERPHARAL NEROPATHY" "PERPHERAL NEUPATHY" "PERPHERIAL NEUROPATHY" {
    replace diagnoses = "26" if diagnoses == "`diag'"
}

foreach diag in "PNEMONIA" "PNEOMONIA" "PNEUMONA" "PNEUMONIA" "PNEUMONIA IN AMANIA" "PNEUMONIA IN PREGNANCY" "PNEUMONIA IN TB" "PNEUOMONIA" "PNJEUMONIA" "PNUEMONIA" "???PNEUMONIA" "?PNEUMONIA" {
    replace diagnoses = "27" if diagnoses == "`diag'"
}  

foreach diag in "GAS" "GASRITIS" "GASTERITIS" "GASTIRITIS" "GASTIRTIS" "GASTITIS" "GASTRATIS" "GASTRATITIS" "GASTRIENTRITIS" "GASTRITIC" "GASTRITIS" "GASTRITIS IN PG" "GASTRO-ESOPHAGEAL REFLUX" "GASTROENTERIC REFLUX DISEASE" "GASTROENTERITIS" "GASTROENTRITIS" "GASTROESOPHAGEAL REFLUX DISEASE" "GASTROESOPHAGEAL REFLUX DISEASE (GERD)" "GASTRTIS" "GASTTRITIS IN PG" "GATRITIS" "ACUTE GASTRITIS" "ACUTE GASRITIS" "ACUTE GASTITIS" {
    replace diagnoses = "28" if diagnoses == "`diag'"
}

foreach diag in "ABCESS" "ABSCESS" "ABSCASS" "ABSCES" "ABSCESS 2 TRAUMA" {
    replace diagnoses = "29" if diagnoses == "`diag'"
}
// Arthralgia is a medical term that means joint pain or stiffness.
foreach diag in "ARTHARLGIA" "ARTHLAGIA" "ARTHRALAGIA" "ARTHRALGIA" "ARTHALGIA" "ARTRIALGIA" {
    replace diagnoses = "30" if diagnoses == "`diag'"
}
 
foreach diag in "ARTHRITIS" {
    replace diagnoses = "31" if diagnoses == "`diag'"
}

foreach diag in "" {
    replace diagnoses = "32" if diagnoses == "`diag'"
}

foreach diag in "UPPER RESPIRATORY TRACK INFECTION" "UPPER RESPIRATORY TRACT INFECTION" "URTI" "URTI IN PG" "URTI IN PREGNANCY"  {
    replace diagnoses = "33" if diagnoses == "`diag'"
}

foreach diag in "VAGINOSIS" "VALVO VAGINAITIS" "VARGINITIS" "VIGINITIS" "VIRGINITIS" {
    replace diagnoses = "34" if diagnoses == "`diag'"
}


/*
???MALARIA

??PG
?ASTHAMA
?MALARIA

A.BRONCILIS
AAA
ABCESS

ABDOMINAL AORTIC ANEURYSM
ABDOMINAL DISCOMFORT
ABDOMINAL INFECTION
ABESS
ABORTION
ABSCASS
ABSCES
ABSCESS
ABSCESS 2 TRAUMA
ACCUTE ASHMATIC IN PREGNANCY
ACIDITY
ACME
ACNE
ACNE VULGARIS
ACUTE BRONCHITIS
ACUTE CELLULITIS
ACUTE CONJUVITIS
ACUTE COUGH
ACUTE CYSTITIS
ACUTE DIARRHOE
ACUTE GASRITIS
ACUTE GASTITIS
ACUTE GASTRITIS
ACUTE GASTROENTERITIS
ACUTE GE
ACUTE INFLAMMTORY DISEASE
ACUTE MASTITIS
ACUTE NASOPHARYNGITIS
ACUTE ORCHITIS
ACUTE OTITIS
ACUTE OTITIS MEDIA

ACUTE PORUYAILINE
ACUTE PSYCHOSIS
ACUTE RHENITUS
ACUTE RHINITIS
ACUTE TONSILITIES
ACUTE ULCER
ACUTE ULCERS
ACUTE URTI

AFEBILLE ILLNESS
AFEBRIL CLINICALLY
ALCHOHOLISM
ALCOHOL WITHDRWAL SYDROME
ALERGIC REACTION
ALERGIC RHINITIS
ALLEGIC CONTACT
ALLERGIC
ALLERGIC BRONCHITIS
ALLERGIC CONJUCTIS
ALLERGIC CONJUCTIVIS
ALLERGIC CONJUCTIVITIS
ALLERGIC CONJUCTIVUTIS
ALLERGIC CONJUCTUTIS
ALLERGIC CONJUVITIS
ALLERGIC COUGH
ALLERGIC DERMATIS
ALLERGIC DERMATITIS
ALLERGIC DERMATITS
ALLERGIC DM ON SKIN
ALLERGIC RASH
ALLERGIC REACTION
ALLERGIC RHENITIS
ALLERGIC RHINITIS
ALLERGIC RHINITUS
ALLERGIC RHINITUS IN PG
ALLERGIC RHINUTIS
ALLERGIES
ALLERGIS
ALLERGY
ALLERRGIC
ALTHRAGIA
ALTHRALGIA
ALTHRITIS
AMBILICAL HERNIA
AMENORRHAGIA
AMENORRHEA
AMENORRHOEA
AMNORRHEA
AMNORRHOEA
AMOBEASIS
AMOBIASIS
AMOEABIASIS
AMOEABSIS
AMOEBA
AMOEBASIS
AMOEBIASIS
AMOEBIASIS/PDT
AMOEBIASISI
ANAEMIA
ANAEMIA IN PREGNANCY
ANAL HEMORRHOIDS
ANAL ITCHINESS
ANAL PRURITUS
ANC
ANC PROFILE
ANC UTI IN PREGNANCY
ANEMIA
ANEMIC
ANERRRHOE
ANGINA
ANKLE JOINT PAIN
ANT NATAL
ANT NATAL CLINIC
ANXIETY
ANXIETY DISORDER
AORTIC ANEURYSM
ARTHALGIA
ARTHARLGIA
ARTHLAGIA
ARTHRALAGIA
ARTHRALGIA
ARTHRITIS
ARTRIALGIA
ASHMA
ASHMATIC
ASHSTAMIC
ASHTMATIC
ASMATIC
ASMOEBIASIS
ASPIRATION PNEUMONIA
ASSAULT 20 DEGREE
ASSAULT STI 2
ASSAULT/VIOLENCE
ASSULT
ASTGMATIC ATTACK
ASTMATIC ATTACK
ATHALGIA
ATHARLGIA
ATHLETE FOOT
ATHMATIC ATTACK
ATHRAGIA
ATHRALGIA
ATHRETISTOOT
ATHRITIS
ATOPIC DERMATIS
ATOPIC DERMATITIS
ATOPIL
ATOPY
ATOPY DERMATITIS
ATRALYGIA SPINE
ATRLRAGIA
AUB
AUB HORMONAL IMBALANCE
AUD
AXILLA ABCESS
B PNEUMONIA
B,ASTM
BABY VACCINATION
BACK CONJUCTIVITIS
BACK PAIN
BACKACHE
BACKPAIN
BACTEREMIA
BACTERIA
BACTERIA EYE INFECTION
BACTERIA RO GE
BACTERIA TINEA COPORUS
BACTERIAL
BACTERIAL EYE INFECTION
BACTERIAL INFECTION
BACTERIAL R/O GE
BACTERIAL R/O MARALIA
BACTERIAL VAGINALSIS
BACTERIAL VAGINASIS
BACTERIAL VAGINOSIS
BADELEMIA
BALAMTIS
BALTERINAL VAGIOSIS
BARTHOLIN CYST
BARTHOLINÃ¯Â¿Â½Ã¯Â¿Â½Ã¯Â¿Â½S ABSCESS
BATHOLITHS
BELL'S POLAY
BENZATHINE/GE
BILES IN PREGNANCY
BITEN BY UNKNOWN INSECT
BLADDER SPASM
BLOOD INFECTION
BODY PAIN
BODY RASH
BOIL
BOILS
BOTTLE PRICK
BOTTLE PUNCTURE
BPH
BRACHICHARDIA
BREAST ABCESS
BREAST ABSCESS
BREAST ABSESS
BREAST MAMMOGRAM
BREAST PAIN
BREAST ULCERS
BROKEN TEETH
BROMATITIS
BRONCHITIS
BRONCHOSPASM
BRONCHTITIS
BRONELITIS
BRONTRITIS/DM
BRUISE
BRUISES
BURN
BURN WOUND
BURNS
BV
C.POX

CALCANEAL SPUR
CALCANEUS SPUR
CALCANIAL SPUR
CALCENIUM SPUR

CANDIDIASIS IN PREGNANCY

CATARACTS
CAVITIES
CECULITIS
CEFRD URTI
CELLITRITIS
CELLUCITIS
CELLUITIS
CELLULITIES
CELLULITIS
CELLULLITIS
CELLULLITIS 2O TRAUMA
CELLUSTIUS
CELULITIS
CENICITIC
CERVCITIS
CERVICAL MASS
CERVICITIES
CERVICITIS
CHANCROID
CHEAST PAIN
CHEILITIS
CHEST
CHEST CONGESTATION
CHEST COUGH
CHEST PAIN
CHEST PAN
CHESTPAIN
CHICKEN POX
CHICKENPOX
CHILING
CHILL
CHILLS
CHILLS BODY
CHLAMYDIA INFECTION
CHRONIC BRONCHITIS
CHRONIC CERVICITIS
CHRONIC COUGH
CHRONIC DIARHOEA
CHRONIC ENTERITIS
CHRONIC GASTRITIS
CHRONIC HEADACHE
CHRONIC HEPATITIS B
CHRONIC MASS
CHRONIC OBSTRUCTIVE PULMONARY DISEASE
CHRONIC PID
CHRONIC SEPTIC WOUND
CHRONIC ULCER
CHRONIC ULCERS
CHRONIC URETHRITIS
CHRONIC UTI
CHRONIC WOUND
CHRONIC WOUND LEFT FOOT
CISM
CLAMIDIA
CLINIC VISIT
CLINICAL AFLEBRILE
CLINICAL ASEFBALE
CLINICAL MAL
CLINICALLY AFEBRIDE
CLORINR RECURRENCY
CLOSTAR HEADACHE
COLD
COLD COUGH
COLD RHINITS
COLLULIUMEN
COLTROLED DM
COMMON COLD
COMMOND COLD
COMPLETE MISCARRIAGE
CONJACTIVITIS
CONJECTIVITIS
CONJICTIVITIS
CONJUCHITIS
CONJUCTIOITS
CONJUCTIUTIS
CONJUCTIVITIS
CONJUCTIVITS
CONJUCTIVITY
CONJUCTUITIS
CONJUCTUTIS
CONJUVITIS
CONSIPITATION
CONSTIPATION
CONSTOCHIRITIS
CONTACT DERMATITIS
CONVERSION DISORDER
CONVULSION
CONVULSIVE DISORDER
COPD
CORD
CORN
CORYZA
COSTIPATION
COSTOCONDITIS
COSYZA
COUGH
COUGH COLD
COUGH IN PREGNANCY
COUNSELLING
COVID 19 ANTGEN
CTD R/O IN PREGNANCY
CUT
CUT ON THE HEAD
CUT WOUND
CUT WOUNDS
CUTWOUND
CYST
CYSTITIS
D.T
DAMATITIS
DAMERTITIS
DEEP CUT WOULD
DEEP CUT WOUND
DEEP VEIN THROMBOSIS
DEH 2 SEPESIS
DEHYADRATION
DEMATITIS
DEMAZIL

DENTAL
DENTAL ABCESS
DENTAL ABSCESS
DENTAL CARE
DENTAL SEPSIS

DEPRESSION
DERMATIS
DERMATITIS`
DERMATTIS
DERMATTONCOSIS
DESMENORRIA
DEWORMING
DEXAMETHASO 3
DIA
DIABETIC FOOT
DIABETIC NEUROPATHY
DIABETIC WOUND




DIB
DINIAH
DISCHARGE
DISCHARGING SINUS 2 C/S
DISCOLATIN LEFT ELBOW
DISENTRY
DISLOCATION
DIZNESS
DIZZINESS
DLASHOSS
DM
DMPA
DOG BITE
DORSAL SPUR
DRESSING
DRUG REACTION
DUB
DYPEPSIA
DYPESIA
DYPESPIA
DYSENTERY
DYSENTRIVE
DYSENTRY
DYSFUNCTIONAL UTERINE BLEEDING
DYSMENNORRHEA
DYSMENOORHOEA
DYSMENORRHEA  *
DYSMENORRHOEA
DYSMENORROHEA
DYSMERRHOEA
DYSMERROHEA
DYSMESONEA
DYSMORRHEA
DYSNENORRHOEA
DYSPEPSIA
DYSPEPSIS
DYSPEPTIC
DYSPEPZA
DYSPERSIA
DYSPESIA
DYSPESIS
DYSPESSIPSIA
DYSPNEA
DYSPNEIA
DYSURIA
DYSURIA HEMAYARA
DYSUSIA
Dental cavities
E.FEVER
EAR BLOCKAGE
EAR INFECTION
EAR PAIN
EAR WAX
EAR WAX INFECTION
EARWAX
ECZAMOUS LOSSIONS
ECZEMA
EMESAS
ENETERIC FEVER
ENFERITIS
ENTECOLIDES
ENTEMIC FEVER
ENTENCOLYTIS
ENTERCOLILITIS
ENTERCOLITIS
ENTERIC FEVER
ENTERITIS
ENTEROCILITIS
ENTEROCOLITES
ENTEROCOLITION
ENTEROCOLITIS
ENTEROCOLLITIS
ENTEROCOLOTOS
ENTEROCOTITIS
ENTEROLITIS
ENTHEMAL PNEUMONIA
ENTITIS
ENTRITIS
ENZEMA
EPIGASTRIC
EPIGASTRIC PAIN
EPIGASTRIC TENDERNES
EPIGASTRIS
EPIGASTRITIS
EPIGIATRITIS/PUD
EPIIPSEA
EPILEPSY
EPILEPTIC
EPISTAXIS
ERECTI DYSFUNCTION
ERITHRIA ON LEFT SIDE
ERYOFLAM
ESSENTIAL HTN
ESSERTIAL HYPERTENSIVE
EXTERNAL PILES
EXTERNAL PUTS GRADE II
EXTRIMITIES ALLERGY
EXTRININCY ALLERGY
EXTRINSIC ALLERGY
EYE
EYE CHECK UP
EYE CONDITION
EYE INFECTION
EYE INJURY
EYE ITCYNESS
EYE PROBLEM
EYECONDITION
EYELID SWELLING
EZTEROCOLITIS
F.P

//Up to this


FABRIL ILNES
FACIAL PALSY
FALLEN WHILE HANGING CLOTHES
FAMILLY PLANNING
FAMILY PLANING
FAMILY PLANNIG
FATIGUE
FB ON THROAT
FCG NILON JACCOD
FEELING COLD
FEVER
FGC TRAUMA
FIBBLE ILLNESS
FIBROADENOMA
FIBROID
FLESH WOUND
FLU
FLU IN DM
FLUE
FOLLUCULITIS
FOOD POISONING
FOOOD POISONING
FOOT DERMATITIES
FOREIGN MATERIAL IN THE EAR
FP
FRACTURE
FRACTURE RIGHT INJURY
FRACTURED LEG
FRACTURED RIBS
FUNGAL DERMATITIS
FUNGAL INFECTION
FUNGAL KIN
FUNGAL SKIN
FUNGAL SKIN IFECTION
FUNGAL SKIN INFECTION
FUNGALITIS
FUNGIVITIS
FUNGUL SKIN
FURUNCLES
G ASTORENTERN
G,E
G.E
GACIOUS ABDOMINAL

GBM
GBN
GBV
GE
GE FGL
GE IN PG
GE IN PREGNANCY
GE TRAUMA
GE/PUD
GELLULITIS
GENE EXPERT
GENERAL BODY PAIN
GENERAL DEHYDRATION
GENERAL DHYDRATION
GENERAL INFECTION
GENITAL ULCER
GENITAL ULCER DISEASE
GENITAL ULCERS
GENITAL WARTS
GERD
GERD IN PREGNANCY
GERMATITIS
GESHITIC
GESTATIONAL
GINGINTIS
GINGIVITIS
GLOSSITIS
GLOSSOPHARGNITIS
GONORREAH
GONORRHEA
GONORRHOEA
GONORROHEA
GOUT INFECTION WOUND
GRDT
GRINGIVITIS
GSTRITIS
GU
GUD
GURD
H PYLORI
H.PYLORI
HAEMMORHOID
HAEMMOROID
HAEMOMORRHOIDS
HAEMONREA
HAEMORRHOID
HAEMORRHOIDS
HAEMORROID
HAEMORROIDS
HAMATONIA 20
HAMORRHOEL
HAND INFECTION
HAND INJURY
HAND PAIN
HARD STOOL
HARDSTOOL
HEAD ACHE
HEAD INJURY
HEADACHE
HEADACHES
HEARTBURN
HEEL PAIN
HEMORRHOID
HEMORRHOIDS
HEMORRHORID
HEPEREMESIS
HEPES
HERNIA
HERP ZOOSTER
HERPES
HERPES ZOOSTER
HERPES ZOSTER
HIGH BLOOD PRESSURE
HIP PAIN
HIV
HIV PREVENTION
HOMONAL IMBALLANCE
HOOKORMS
HORMONAL IMBALANCE
HORMONAL SURGE
HORMONE IMBALANCE
HORMORNAL IMBALANCE
HPYLORI
HTM
HTN
HTN WITH URTI
HTN/DM
HTN/HEMOMEA
HTN/NEROPYN
HTN/RBS
HTN/TONSILITIS
HTS
HTW
HUMAN BITE
HUMAN BITE 2 ASSAULT
HUMAN BITE WOUND
HUMANBITE
HUNALITIS BOIL
HYDROLATIS
HYPECIDITY
HYPEGLYCAEMIA
HYPER ACIDITY
HYPERACIDITY
HYPERACIDITY/FALSE LABOUR
HYPERANSIS GRAVID
HYPEREMESIS
HYPEREMESIS GRADIUM
HYPEREMESIS GRAVIDARUM
HYPEREMIA GRAVIDAN
HYPEREMISIS
HYPEREMISIS GRAVIDIUM
HYPERERISS
HYPERESIS
HYPERGLACEMA
HYPERGLACEMIA *
HYPERGLYCAEMIA
HYPERGLYCEMIA
HYPERGYAEMIA
HYPERISIS
HYPERPIMIDAL
HYPERTCUSION
HYPERTENSION/ARTHRITIS
HYPERTENSION/TONSILITIS/URTI
HYPERTENSIVE
HYPERTERSON
HYPERTESNSIVE HEART DISEASE
HYPLORI
HYPOGLACEMIA
HYPOGLYCAEMIA
I
IDIOPALLIC
IDIOPATHIC CRTICSIA
IFAS
IMMENSE PID
IMPCYSTITIS
IMPETIGO
IMPRESSIN CONSTIPATION
IMPRESSION
INCOMPLETE ABORTION
INCOMPLETE ARBORTION
INERCOLITIS
INFERTILITY PARA 3+0
INFLAMED TONSILITIS
INSOMNIA
INTERNAL FEVER
INTERNAL HEMORRHOID
INTERNAL HEMORRHOIDS
INTRUPU ALLERGY
IRACTURE
IRRITABLE BALD SYDROME
IRRITABLE BOWEL
ISAINONELOSIS
ITCHING BODY RASH
ITCHNESS
ITCHNESS ON GRAIN
ITCHY BODY
ITCHY RASH
ITCHY RASHES
JAUNDICE
JOINT PAIN
JOINT PAINS
KNEE CUT
KNEE JOINT DISLOCATION
KNEE JOINT SPRAIN
KNOEWN HTN
KNOWN ASMATIC
KNOWN ASTHAMATIC
KNOWN DIABETIC
KNOWN DM
KNOWN DM ON CARE
KNOWN HTN
KNOWN HTN R/O DM
KNOWN HTN/DM
KNOWN HYPERTENSION
KNOWN RVD
LACERATION
LAMBAGO
LAPS
LAPS AND BACK PAIN
LARNGYTIS
LARYNGITIS
LBP
LEFT BIG TOE ABSCESS
LEG CELULITIS
LEG SWELLING
LEG WOUND
LIMBS BURNING
LIPOMA
LOLAATHRITIS
LOW LIBIDO
LOWER ABDOMINAL PAIN
LOWER ABNOMINAL PAIN
LOWER B PAIN
LOWER RESPIRATORY TRACT INFECTION
LOWERBACK PAIN
LRI
LRTI
LUMBAGO
LUMBAGO IN PG
LUMBANGO
LUMBARGO
LUMBARGO 2 TO TRAUMA
LUMBARGO IN DM
LUMBER SPASM
LYMPHEOPUMIA
LYMPHOID GLANDITIS
MALAN
MALARIA
MALASE
MALGIA
MASTODYNIA
MAYALGIA
MEDIAL REPORT
MEDICAL REPORT
MENIGITIS
MENNORAGIA
MENORGITIS
MENORHOGIA
MENORREGIA
MENORRHAGIA
MENOUGIA
MENTALGIA
MEROPATY
MERTITIS
METATARSAL
METRORHAGIA
MGRINE
MIGRAINE
MIGRAINE CAUSE OF BP
MIGRANE
MIGRANE HEADACHE
MIGRANES
MILD ANAEMIA
MILD ANEMIA
MILD ORDEMA
MILD WOUND
MINOR CUT
MISCARRIAGE
MISCARRIAGE 4/12
MISSED ABORTION
MITES
MODERATE ANEMIA
MOUTH SORE
MOUTH SORES
MOUTH ULCER
MOUTH ULCERS
MRDT
MRDT POSITIVE
MRTI
MULTIPLE BENIN SWELLING LIPOMA
MULTIPLE BOILS
MULTIPLE BRUISES
MUMPS
MUMPZ
MUNORRHIGIA
MUSCLE PAIN
MUSCLE SPARSM
MUSCLE SPASM
MUSCLE SPASMS
MUSCLE SPRAIN
MUSCLEPAIN
MUSCLEPASM
MUSCLES SPASM
MUSLE SPASM
MUSLES SPASM
MUSSLE SPASM
MYAGLIA
MYALAGIA
MYALGEA
MYALGIA
MYALGIA ALLERGIC
MYALGIA ASSAOULT DENTAL
MYALGIA/FLU
MYALGNA
MYLAGIA
MYLGIA
MYOPIA
NAD
NAIL FUNGAL INFECTION
NAIL PRICK
NAIL PRICK ON FOOT
NAIL PRICKLE
NASAL CONGESTION
NASALGIA
NASO PHARYNGITIS
NASOPHANGITIS
NASOPHARYNGITIS
NAUSEA
NECK MASS
NECK PAIN
NEEDLE PRICK
NEORITIS
NEOSPASM
NEREMPTY PERIPHEREL
NEURALGIA
NEURITIS
NEUROARTHLGIA
NEUROLAGIA
NEUROPABLES PAINS
NEUROPATHIC PAIN
NEUROPATHIS
NEUROPATHY
NEUROPAYRE
NEUROPTHY
NEUROTIS
NEURPATHY
NEW RVD
NEWLY DN HTN
NEWLY HTN
NEWLY HTN IN RVD
NIPLE CRACKY
NO PCC
NORMAL PREGNANCY
NULL POROUS
NUMBNESS
NUTRION REVIEW
NZG
O
O.M
OBSTETRIC PREGNACY
ODEMA
OEDEMA
OEDEMS
OESTROARTHRITIS
OESTROATHRITIS
ONNCHOMYOSIS
OPEN CUT
OPENWOUND
OPHAGIA
ORAL GINGITIS
ORAL THRASH
ORAL THRUSH
ORALTHRUSH
ORCHITIS
ORDINOPHAGIA
ORDUTIS
OSTE ATHRITIS
OSTEOARTHRITIS
OSTEOATITIS
OTESTIS MEDIA
OTITIS
OTITIS 2 TRAUMA
OTITIS MEDIA
OTITISMEDIA
OTITS MEDIA
OTTIS MEDIA
OYSPEPSIC
P.D
P.E.T
P.I.D??
P.V DISCHARGE
PAIN ANKLE
PAIN AT THE KNEE
PAIN ON SHOULDER
PAIN VULVA
PAINFUF RT BREAST
PAINFUL DOFCORADCON
PAINFUL IRRITATION
PAINFUL MICTURATION
PAINFUL SHOULDER
PAINFUL SWALLOWING
PAINFUL SWELLING HANDS
PAINFUL URINATION
PALPITATION
PALPITATIONS
PAPITITIS
PAPULER RASH
PARALYSIS ON LEFT SIDE
PARONYCHIA
PDN
PDT
PDT_POS
PEDAL EDEMA
PELVIC BLEEDING
PELVIC DISCHARGE
PELVIC INFAMMATORY DISEASE
PELVIC INFLAMMATORY DISEASE
PELVIC INFLAMMATOTY DISEASE
PELVIC ITCHINESS
PELVIC PAIN
PENURISM
PEPTIC ULCER DISEASE
PEPTIC ULCER DISEASE/ AMOEBIASIS
PERIODINITIS
PERIODINTITIS

PEST VIRAL ATHMALGIC
PET IN PREGNANCY
PET POST PASTRL
PG




PHOTOPHOBIA
PHYCHATRIC
PHYSICAL ASSAULT
PID
PID IN CANDIASIS
PILES
PIP
PIUD
PLEMSY
PLENASY
PLENISY
PLENITIS
PLENSIL
PLEURISY
PLEURISYLVEI
PLEURITIC
PLEURITIS
PNARYNGITIS

POLY ARTHRITIS
POLYARHRITIS
POLYARTHITIS
POLYARTHRITIS
POLYCYTHEMIA
POLYENTERITIS
POPULAR VIRTICANIA
POST ASAULT
POST MENOPAUSAL SYNDROME
POST MENTAL SYDROME
PRE EDAMPSIE
PRE MENTRICAL
PRE TERM LABOUR
PRE-ECLAMPSIA
PREGNANCY
PREGNANCY SYMPTOMS
PREGNANT
PREMENSTRUAL SYNDROME
PRESSUMTIVE MALARIA
PRICK FINGER
PRICK INJURY
PRICK WOUND
PRICKWOUND
PRILY
PRIMARY OVARIAN INSUFFICIENCY
PROLAPSE DISC
PROLONGED LABOUR
PROLONGED MENSES
PSYCHIATRIC
PSYCHOSIS
PSYCHOSOMATIC DISORDER
PTB
PUD
PUD R/O BACTERIAL
PULMONARY TB
PULMONARY TUBERCULOSIS
PUNCTURE WOUND
PUNRITIS
PV BLEEDING
PV DISCHARGE
PV ITCHINESS
PV/CANDID
PVD
PY
PYELONEPHRITIS
PYELONEPHTITIS
PYELONEPTHRITIS
PYLONEPHRITIS
P
R-NOSE
R. NOSE
RAPE
RASH
RASH ON THE BODY
RASHES
RBS
RDT
RDT-NEGATIVE
REACTIVE AIRWAY
RECCURENT URETHRITIS
RECURRENT UTI
REFLUX OESOPHAGITIS
REFLUX PNEUMONITIS
REFLUXOESPGAGITIS
RENAL TUBULAR NECROSIS
RENOVASCULAR DISEASE

RETINOPATHY
REUSON D
RHEMATOID FACTORS
RHENITIS
RHENITUSIM
RHENUTIS
RHEUMATIC HEART DISEASE
RHEUMATISM
RHEUMATOID ARTHRITIS
RHEUTASIM
RHILITIS
RHINILITIS
RHINITIS
RHINITTIS
RHINITUS
RHINOSINUSITIS
RHINRITIS
RHINTIS
RHINTITIS
RHINUTIS
RHIRITIS
RHITITIS
RID
RIGHT KNEE JOINT SPRAIN
RIGHT UPPER LIMB
RLO MALARIA
RO MALARIA
ROAD ACCIDENT
ROTITIS
RT BREAST LUMP
RT KNEE PAIN
RT LEG INJURY
RTA
RTI
RUNNING NOSE
RUSH
RUSHES
Respiratoty Tract Infection
S.T.I
SABMANDIBULAR SWELLING
SALMONOLIOUS
SARS COVID-2AG
SCABIES
SCABLES
SCALEISS
SCAN REVIEW
SCARTIA
SCHIZOPHENIA
SCIATIC
SCIATICA
SCLATICA
SEBORRHOIC DERMATITIS
SEPSIA
SEPSIS
SEPTCAEMIA
SEPTIC
SEPTIC ARTHRITIS
SEPTIC CHRONIC WOUND
SEPTIC COUGH
SEPTIC CUT  WOUND
SEPTIC CUT WOUND
SEPTIC DERMATIC
SEPTIC DERMATITIS
SEPTIC INCISION
SEPTIC RASH
SEPTIC SORES
SEPTIC SPOTS
SEPTIC STAB WOUND
SEPTIC TONSILITIS
SEPTIC ULCER
SEPTIC ULCERS
SEPTIC WOUND
SEPTIC WOUND 2 TRAUMA
SEPTIC WOUNDS
SEPTICAEMIA
SEPTICAEMIA RDT-NEGATIVE
SEPTICAMEIA
SEPTICAMIA
SEPTICEMA
SEPTICEMIA
SEPTICIOUS WOUND
SEPTICWOUND
SEPTIEAMA
SERBARHEIC ECZEMA
SERVER ABDOMINAL PAIN
SESPECTED TB
SEVERE  HEADACHE
SEVERE ANAEMIA
SHOULDER PAIN
SHOULDERPAIN
SILVAL SALICICLE
SINICISTIS
SINITIS
SINITITIS
SINUSITIS
SINUSITIS`
SINUTIS
SKIN
SKIN ALLERGY
SKIN CONDITION
SKIN DERMATITIS
SKIN DESEASE
SKIN EXFOLIATION
SKIN INFECTION
SKIN RASH
SKIN RG
SKIN RUSH
SMEERING
SNAKE BITE
SNEEZE
SNORING
SOFT TISSUE
SOFT TISSUE  INJURY
SOFT TISSUE DUE TO ASSAULT
SOFT TISSUE INJURT
SOFT TISSUE INJURT DUE TO ASSAULT
SOFT TISSUE INJURY
SOFT TISSUE INJURY /20 ASSAULT
SOFT TISSUE INJURY 2O ASSAULT
SOFT TISSUE INJURY DUE TO ASSAULT
SOFT TISSUE INJURY WOUND
SOFT TISSUE INJUTY
SOFT TISUE INJURY
SOLOPHARGITIS
SORETHROAT
SPASM
SPASMS
SPRAIN
SPRAIN INJURY
ST1 2 ASSAULT
STA 2 TRAUMA
STAB WOUND
STI
STI & TRAUMA
STI 2 APIGESTIC
STI 2 ASSAULT
STI 2 ASSAULT IN PERPHERIAL
STI 2 ASSSAULT
STI 2 BEE BITE
STI 2 FALL
STI 2 FRACTURE
STI 2 INJURY
STI 2 PHYSICAL ASSAULT
STI 2 RIGHT HAND
STI 2 RTA
STI 2 TO ASSAULT
STI 2 TO RTA
STI 2 TRAUMA
STI ASSAULT
STI INJURY
STI/ SYPHILIS
STITCH REMOVAL
STOMACH ACHE
STOMACHE
STONATITIS
STRESS
STROKE
STYE
SUBSTANCE INTOXICAHNG
SUPARATIVE TONSILITIS
SUPERFICIAL BURN
SUPERFICIAL BURNS
SUPRAPUBIC TENDERNESS
SUSPECTED MALARIA
SUSPECTED PNEUMONIA
SUSPECTED PULMONARY TB
SWELLING ANKLE
SWELLING BREAST
SWELLING LIMPOMA
SWELLING ON THE ANAL
SWELLING WRIST
SWOLLEN ANKLE
SWOLLEN FACE
SWOLLEN JAW
SWOLLEN LEG
SWOLLEN LIBS
SYMPAPUPIC TENDERNES
SYNDROPELSTIC
SYSPEPSIA
T. FEVER
T. VESICULAR
T.CAPITIS
T.COPORIS
T.CORPORIS
T.CORPOSIS
T.CRURIS
T.FEVER
T.PEDIS
T2 DM
T2DM
TB
TB RELAPSE
TB SKIN
TENSION HEADACHE
TENSIONAL HEADACHE
TF
TF ANTHRITIS
THEOBASIS
THREATEN ABORTION
THREATEND ABORTION
THREATENED ABORTION
THREATENED ARBORTION
THREATNED ABORTION
THUMB CUT
TINEA
TINEA  VESICULAR
TINEA CAPITIS
TINEA CARPOSIS
TINEA COMPORIS
TINEA COPOUS
TINEA COPSASIS
TINEA CORPARIS
TINEA CORPORIS
TINEA CORPORTS
TINEA CORPOSIS
TINEA CORPRSIS
TINEA CORPSIS
TINEA CORPUS
TINEA PEDIS
TINEA VERSCULES
TINEA VERSICOLOR
TINEACORPRSIS
TINEACORPSIS
TINEASIS
TINEAVESICULAR
TINNITUS
TONGUE LOISNESS
TONILITIS
TONSIL INFECTION
TONSILAR HYPETROPLY
TONSILITIS ABSES
TONSILITIS/TINEA
TONSILITIS/URTI/GE
TONSILITS
TONSILITTIS
TONSILLITIS
TONSILLITS
TOOTACHE
TOOTH ACHE
TOOTH CAVITY
TOOTHACHE
TOOTHCAVITY
TOOTHDECAY
TOSILITIS
TRACT INFECTION
TRAUMA
TRAUMATIC WOUND
TREATENED MISCARRIAGE
TROAT PAIN
TUBERCULOSIS
TYPE 2 DM
TYPHOID
U.T.I
ULCER
ULCER FOOT
ULCERS
UMBILICIAL HERNIA
UNCONTROLLED DIABETES
UNCONTROLLED HYPERTENSION
UNKNOWN ASMATIC
UPPER GI BLEEDING
UPPER RESPIRATORY TRACK INFECTION
UPPER RESPIRATORY TRACT INFECTION
UPPER UTI
URENITIS
URETHIRITIS
URETHRAL DISCHARGE
URETHRATIS
URETHRITIS
URHAGEL SCIETICAL
URICANIA
URIMARY TRACT INFECTION
URINALISIS
URINALYSIS
URINARY TRACT INFECTION
URINARY TRACT INFECTIONS
URINARY TRACT INFECTION`
URITICENAF AMOEBIASIS
URT
URTACARIA
URTHERITIS
URTI
URTI /TB
URTI IN PG
URTI IN PREGNANCY
URTI/GASTRITIS
URTI/GE
URTICANLA
URTICARIA
UTERINE MYOMA
UTI  IN PREGNANCY
UTI AND VAGINAL CADIDIASIS
UTI IN PG
UTI IN PREGNANCY
UTI IN PREGNANNCY
UTI PREGNANCY
UTI R/O PID
UTI TINEA
UTI/CANDIDIASIS
UTI/HYPAMOL
UTI/PID
UTI/PROSTATIS
UTI/RTI
UTI/URTI
UTI/VAGINAITIS
UTICARIA
UTITIS MEDIA
UTRI
V CANDIDIAS
V DISCHARGE
V/D
VAGINAL DISCHARGE
VAGINITIS
VAGINOSIS
VALVO VAGINAITIS
VALVOVAGINA  CANDIDIASIS
VANGINITIS
VARGINITIS
VARICOSE VEIN
VDRL
VERICOSE VEINS
VERTIGO
VESICULAR
VIGANIAL DISCHARGE
VIGINAL DISCHARGE
VIGINITIS
VIRAL URTI
VIRAL UTI
VIRGINITIS
VOMITING
VOMMITING
VOSICOLOR
VULVA ITCHES
VULVA RASH
WARTS
WAX IMPACTION
WAX IMPECTION
WIFFLE DISCHARGE
WOUND DRESSING
WOUND IN THE TOE

*/

.class public final enum Lorg/linphone/core/PresenceActivityType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/linphone/core/PresenceActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/PresenceActivityType;

.field public static final enum Appointment:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Away:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Breakfast:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Busy:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Dinner:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Holiday:Lorg/linphone/core/PresenceActivityType;

.field public static final enum InTransit:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Invalid:Lorg/linphone/core/PresenceActivityType;

.field public static final enum LookingForWork:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Lunch:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Meal:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Meeting:Lorg/linphone/core/PresenceActivityType;

.field public static final enum OnThePhone:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Other:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Performance:Lorg/linphone/core/PresenceActivityType;

.field public static final enum PermanentAbsence:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Playing:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Presentation:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Shopping:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Sleeping:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Spectator:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Steering:Lorg/linphone/core/PresenceActivityType;

.field public static final enum TV:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Travel:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Unknown:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Vacation:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Working:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Worship:Lorg/linphone/core/PresenceActivityType;


# instance fields
.field protected final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/4 v1, 0x0

    const-string v2, "Appointment"

    invoke-direct {v0, v2, v1, v1}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Appointment:Lorg/linphone/core/PresenceActivityType;

    .line 29
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/4 v2, 0x1

    const-string v3, "Away"

    invoke-direct {v0, v3, v2, v2}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Away:Lorg/linphone/core/PresenceActivityType;

    .line 31
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/4 v3, 0x2

    const-string v4, "Breakfast"

    invoke-direct {v0, v4, v3, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Breakfast:Lorg/linphone/core/PresenceActivityType;

    .line 33
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/4 v4, 0x3

    const-string v5, "Busy"

    invoke-direct {v0, v5, v4, v4}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Busy:Lorg/linphone/core/PresenceActivityType;

    .line 35
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/4 v5, 0x4

    const-string v6, "Dinner"

    invoke-direct {v0, v6, v5, v5}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Dinner:Lorg/linphone/core/PresenceActivityType;

    .line 37
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/4 v6, 0x5

    const-string v7, "Holiday"

    invoke-direct {v0, v7, v6, v6}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Holiday:Lorg/linphone/core/PresenceActivityType;

    .line 39
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/4 v7, 0x6

    const-string v8, "InTransit"

    invoke-direct {v0, v8, v7, v7}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->InTransit:Lorg/linphone/core/PresenceActivityType;

    .line 41
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/4 v8, 0x7

    const-string v9, "LookingForWork"

    invoke-direct {v0, v9, v8, v8}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->LookingForWork:Lorg/linphone/core/PresenceActivityType;

    .line 43
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/16 v9, 0x8

    const-string v10, "Lunch"

    invoke-direct {v0, v10, v9, v9}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Lunch:Lorg/linphone/core/PresenceActivityType;

    .line 46
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/16 v10, 0x9

    const-string v11, "Meal"

    invoke-direct {v0, v11, v10, v10}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Meal:Lorg/linphone/core/PresenceActivityType;

    .line 49
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/16 v11, 0xa

    const-string v12, "Meeting"

    invoke-direct {v0, v12, v11, v11}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Meeting:Lorg/linphone/core/PresenceActivityType;

    .line 51
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/16 v12, 0xb

    const-string v13, "OnThePhone"

    invoke-direct {v0, v13, v12, v12}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->OnThePhone:Lorg/linphone/core/PresenceActivityType;

    .line 54
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/16 v13, 0xc

    const-string v14, "Other"

    invoke-direct {v0, v14, v13, v13}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Other:Lorg/linphone/core/PresenceActivityType;

    .line 59
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/16 v14, 0xd

    const-string v15, "Performance"

    invoke-direct {v0, v15, v14, v14}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Performance:Lorg/linphone/core/PresenceActivityType;

    .line 62
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const/16 v15, 0xe

    const-string v14, "PermanentAbsence"

    invoke-direct {v0, v14, v15, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->PermanentAbsence:Lorg/linphone/core/PresenceActivityType;

    .line 64
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v14, "Playing"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Playing:Lorg/linphone/core/PresenceActivityType;

    .line 66
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Presentation"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Presentation:Lorg/linphone/core/PresenceActivityType;

    .line 68
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Shopping"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Shopping:Lorg/linphone/core/PresenceActivityType;

    .line 70
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Sleeping"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Sleeping:Lorg/linphone/core/PresenceActivityType;

    .line 72
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Spectator"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Spectator:Lorg/linphone/core/PresenceActivityType;

    .line 74
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Steering"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Steering:Lorg/linphone/core/PresenceActivityType;

    .line 76
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Travel"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Travel:Lorg/linphone/core/PresenceActivityType;

    .line 78
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "TV"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->TV:Lorg/linphone/core/PresenceActivityType;

    .line 80
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Unknown"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Unknown:Lorg/linphone/core/PresenceActivityType;

    .line 82
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Vacation"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Vacation:Lorg/linphone/core/PresenceActivityType;

    .line 84
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Working"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Working:Lorg/linphone/core/PresenceActivityType;

    .line 86
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Worship"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Worship:Lorg/linphone/core/PresenceActivityType;

    .line 87
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string v13, "Invalid"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v13, v14, v15}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Invalid:Lorg/linphone/core/PresenceActivityType;

    const/16 v0, 0x1c

    new-array v0, v0, [Lorg/linphone/core/PresenceActivityType;

    .line 23
    sget-object v13, Lorg/linphone/core/PresenceActivityType;->Appointment:Lorg/linphone/core/PresenceActivityType;

    aput-object v13, v0, v1

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Away:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Breakfast:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Busy:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Dinner:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Holiday:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->InTransit:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->LookingForWork:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Lunch:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Meal:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Meeting:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->OnThePhone:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v12

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Other:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Performance:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->PermanentAbsence:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Playing:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Presentation:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Shopping:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Sleeping:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Spectator:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Steering:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Travel:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->TV:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Unknown:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Vacation:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Working:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Worship:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Invalid:Lorg/linphone/core/PresenceActivityType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->$VALUES:[Lorg/linphone/core/PresenceActivityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lorg/linphone/core/PresenceActivityType;->mValue:I

    return-void
.end method

.method protected static fromInt(I)Lorg/linphone/core/PresenceActivityType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 128
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Invalid:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 127
    :pswitch_0
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Worship:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 126
    :pswitch_1
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Working:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 125
    :pswitch_2
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Vacation:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 124
    :pswitch_3
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Unknown:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 123
    :pswitch_4
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->TV:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 122
    :pswitch_5
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Travel:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 121
    :pswitch_6
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Steering:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 120
    :pswitch_7
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Spectator:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 119
    :pswitch_8
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Sleeping:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 118
    :pswitch_9
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Shopping:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 117
    :pswitch_a
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Presentation:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 116
    :pswitch_b
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Playing:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 115
    :pswitch_c
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->PermanentAbsence:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 114
    :pswitch_d
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Performance:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 113
    :pswitch_e
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Other:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 112
    :pswitch_f
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->OnThePhone:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 111
    :pswitch_10
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Meeting:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 110
    :pswitch_11
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Meal:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 109
    :pswitch_12
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Lunch:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 108
    :pswitch_13
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->LookingForWork:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 107
    :pswitch_14
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->InTransit:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 106
    :pswitch_15
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Holiday:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 105
    :pswitch_16
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Dinner:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 104
    :pswitch_17
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Busy:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 103
    :pswitch_18
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Breakfast:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 102
    :pswitch_19
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Away:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    .line 101
    :pswitch_1a
    sget-object p0, Lorg/linphone/core/PresenceActivityType;->Appointment:Lorg/linphone/core/PresenceActivityType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/PresenceActivityType;
    .locals 1

    .line 23
    const-class v0, Lorg/linphone/core/PresenceActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/linphone/core/PresenceActivityType;

    return-object p0
.end method

.method public static values()[Lorg/linphone/core/PresenceActivityType;
    .locals 1

    .line 23
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->$VALUES:[Lorg/linphone/core/PresenceActivityType;

    invoke-virtual {v0}, [Lorg/linphone/core/PresenceActivityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/PresenceActivityType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/linphone/core/PresenceActivityType;->mValue:I

    return v0
.end method

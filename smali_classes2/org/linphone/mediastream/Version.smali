.class public Lorg/linphone/mediastream/Version;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final API03_CUPCAKE_15:I = 0x3

.field public static final API04_DONUT_16:I = 0x4

.field public static final API05_ECLAIR_20:I = 0x5

.field public static final API06_ECLAIR_201:I = 0x6

.field public static final API07_ECLAIR_21:I = 0x7

.field public static final API08_FROYO_22:I = 0x8

.field public static final API09_GINGERBREAD_23:I = 0x9

.field public static final API10_GINGERBREAD_MR1_233:I = 0xa

.field public static final API11_HONEYCOMB_30:I = 0xb

.field public static final API12_HONEYCOMB_MR1_31X:I = 0xc

.field public static final API13_HONEYCOMB_MR2_32:I = 0xd

.field public static final API14_ICE_CREAM_SANDWICH_40:I = 0xe

.field public static final API15_ICE_CREAM_SANDWICH_403:I = 0xf

.field public static final API16_JELLY_BEAN_41:I = 0x10

.field public static final API17_JELLY_BEAN_42:I = 0x11

.field public static final API18_JELLY_BEAN_43:I = 0x12

.field public static final API19_KITKAT_44:I = 0x13

.field public static final API21_LOLLIPOP_50:I = 0x15

.field public static final API22_LOLLIPOP_51:I = 0x16

.field public static final API23_MARSHMALLOW_60:I = 0x17

.field public static final API24_NOUGAT_70:I = 0x18

.field public static final API25_NOUGAT_71:I = 0x19

.field public static final API26_O_80:I = 0x1a

.field private static final buildVersion:I

.field private static hasNeon:Ljava/lang/Boolean;

.field private static sCacheHasZrtp:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lorg/linphone/mediastream/Version;->buildVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpCapabilities()V
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ==== Capabilities dump ====\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lorg/linphone/mediastream/Version;->isArmv7()Z

    move-result v1

    const-string v2, "\n"

    if-eqz v1, :cond_0

    const-string v1, "Has neon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/linphone/mediastream/Version;->hasNeon()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "Has ZRTP: "

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/linphone/mediastream/Version;->hasZrtp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    return-void
.end method

.method public static getCpuAbis()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x15

    .line 88
    invoke-static {v1}, Lorg/linphone/mediastream/Version;->sdkAboveOrEqual(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 90
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "SUPPORTED_ABIS"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 91
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 92
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 95
    invoke-static {v3}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :cond_0
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static hasFastCpu()Z
    .locals 1

    .line 140
    invoke-static {}, Lorg/linphone/mediastream/Version;->isArmv5()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static hasFastCpuWithAsmOptim()Z
    .locals 1

    .line 143
    invoke-static {}, Lorg/linphone/mediastream/Version;->isX86()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/linphone/mediastream/Version;->isArm64()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/linphone/mediastream/Version;->isArmv5()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/Version;->hasNeon()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static hasNeon()Z
    .locals 1

    .line 136
    sget-object v0, Lorg/linphone/mediastream/Version;->hasNeon:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/Version;->nativeHasNeon()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/linphone/mediastream/Version;->hasNeon:Ljava/lang/Boolean;

    .line 137
    :cond_0
    sget-object v0, Lorg/linphone/mediastream/Version;->hasNeon:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static hasZrtp()Z
    .locals 1

    .line 155
    sget-object v0, Lorg/linphone/mediastream/Version;->sCacheHasZrtp:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lorg/linphone/mediastream/Version;->nativeHasZrtp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/linphone/mediastream/Version;->sCacheHasZrtp:Ljava/lang/Boolean;

    .line 158
    :cond_0
    sget-object v0, Lorg/linphone/mediastream/Version;->sCacheHasZrtp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static isArm64()Z
    .locals 3

    const/4 v0, 0x0

    .line 105
    :try_start_0
    invoke-static {}, Lorg/linphone/mediastream/Version;->getCpuAbis()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "arm64-v8a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 107
    invoke-static {v2}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    return v0
.end method

.method private static isArmv5()Z
    .locals 3

    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-static {}, Lorg/linphone/mediastream/Version;->getCpuAbis()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "armeabi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 131
    invoke-static {v2}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    return v0
.end method

.method private static isArmv7()Z
    .locals 3

    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-static {}, Lorg/linphone/mediastream/Version;->getCpuAbis()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "armeabi-v7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 115
    invoke-static {v2}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    return v0
.end method

.method public static isHDVideoCapable()Z
    .locals 3

    .line 149
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 150
    invoke-static {}, Lorg/linphone/mediastream/Version;->isVideoCapable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/Version;->hasFastCpuWithAsmOptim()Z

    move-result v1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isVideoCapable()Z
    .locals 1

    const/4 v0, 0x5

    .line 146
    invoke-static {v0}, Lorg/linphone/mediastream/Version;->sdkStrictlyBelow(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/Version;->hasFastCpu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isX86()Z
    .locals 3

    const/4 v0, 0x0

    .line 121
    :try_start_0
    invoke-static {}, Lorg/linphone/mediastream/Version;->getCpuAbis()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 123
    invoke-static {v2}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    return v0
.end method

.method public static isXLargeScreen(Landroid/content/Context;)Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static native nativeHasNeon()Z
.end method

.method private static native nativeHasZrtp()Z
.end method

.method public static sdk()I
    .locals 1

    .line 83
    sget v0, Lorg/linphone/mediastream/Version;->buildVersion:I

    return v0
.end method

.method public static final sdkAboveOrEqual(I)Z
    .locals 1

    .line 75
    sget v0, Lorg/linphone/mediastream/Version;->buildVersion:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final sdkStrictlyBelow(I)Z
    .locals 1

    .line 79
    sget v0, Lorg/linphone/mediastream/Version;->buildVersion:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

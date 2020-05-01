.class public final Lo/BluetoothAvrcpController$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothAvrcpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/BluetoothAssignedNumbers;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/BluetoothAssignedNumbers;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 107
    invoke-static {}, Lo/BluetoothAvrcpController$StateListAnimator;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/BluetoothAvrcpController$StateListAnimator;->b:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 116
    sget-object v1, Lo/BluetoothAvrcpController$StateListAnimator;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lo/BluetoothAvrcpController$ActionBar;

    sget-object v2, Lo/BluetoothAvrcpController$StateListAnimator;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lo/BluetoothAvrcpController$ActionBar;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "User-Agent"

    .line 117
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/BluetoothAvrcpController$StateListAnimator;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lo/BluetoothAvrcpController$StateListAnimator;->e:Z

    .line 125
    sget-object v1, Lo/BluetoothAvrcpController$StateListAnimator;->a:Ljava/util/Map;

    iput-object v1, p0, Lo/BluetoothAvrcpController$StateListAnimator;->d:Ljava/util/Map;

    .line 126
    iput-boolean v0, p0, Lo/BluetoothAvrcpController$StateListAnimator;->c:Z

    return-void
.end method

.method static e()Ljava/lang/String;
    .locals 6

    const-string v0, "http.agent"

    .line 238
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 243
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    :cond_1
    const/16 v5, 0x7f

    if-ge v4, v5, :cond_2

    .line 248
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v4, 0x3f

    .line 250
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lo/BluetoothAvrcpController;
    .locals 2

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lo/BluetoothAvrcpController$StateListAnimator;->e:Z

    .line 218
    new-instance v0, Lo/BluetoothAvrcpController;

    iget-object v1, p0, Lo/BluetoothAvrcpController$StateListAnimator;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Lo/BluetoothAvrcpController;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.class public Lo/acR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/JavascriptInterface;


# static fields
.field private static a:Lo/acP;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static b:J

.field private static c:Lo/acR;

.field private static d:J

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lo/acR;

    invoke-direct {v0}, Lo/acR;-><init>()V

    sput-object v0, Lo/acR;->c:Lo/acR;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)V
    .locals 0

    .line 204
    invoke-static {p0, p1}, Lo/acR;->c(J)V

    return-void
.end method

.method static synthetic a(Lo/acR;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;Lo/Tm;Lo/Tk;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lo/acR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;Lo/Tm;Lo/Tk;)V

    return-void
.end method

.method private synthetic b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;Lo/Tm;Lo/Tk;)V
    .locals 1

    .line 132
    sget-object v0, Lo/Tk$Activity;->a:Lo/Tk$Activity;

    if-ne p5, v0, :cond_0

    .line 133
    invoke-static {p1, p2, p3}, Lo/acP;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V

    .line 134
    invoke-virtual {p0}, Lo/acR;->i()V

    goto :goto_0

    .line 135
    :cond_0
    sget-object p1, Lo/Tk$Application;->b:Lo/Tk$Application;

    if-ne p5, p1, :cond_1

    .line 136
    invoke-virtual {p4}, Lo/Tm;->f()V

    .line 137
    invoke-virtual {p0}, Lo/acR;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(ZZ)Z
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 209
    invoke-static {}, Lo/acR;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "Active:%b isPinProtected:%b isPreviewProtected: %b - shouldVerifyPin"

    .line 208
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_pin_session"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    return v3

    :cond_0
    if-eqz p1, :cond_1

    .line 216
    invoke-static {}, Lo/acR;->c()Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_1
    return v2
.end method

.method private static c(J)V
    .locals 3

    .line 243
    invoke-static {}, Lo/acR;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 245
    invoke-static {}, Lo/acR;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "isActive: %b lastInteractionTime:%d - registerUserInteractionEvent"

    .line 244
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_pin_session"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x1b7740

    add-long/2addr v0, p0

    .line 248
    invoke-static {v0, v1}, Lo/acR;->d(J)V

    :cond_0
    return-void
.end method

.method private static synthetic c(Ljava/lang/Throwable;)V
    .locals 2

    .line 140
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Error checking profile pin for playback"

    invoke-interface {v0, v1, p0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c()Z
    .locals 5

    .line 197
    sget-wide v0, Lo/acR;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static d(J)V
    .locals 4

    .line 257
    sget-wide v0, Lo/acR;->d:J

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 259
    invoke-static {}, Lo/acR;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "isActive: %b, current:%d, newExpiry:%d - updatePinSessionExpiryTime"

    .line 258
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_pin_session"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sput-wide p0, Lo/acR;->d:J

    :cond_0
    return-void
.end method

.method private d(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/acR;->a:Lo/acP;

    invoke-virtual {v2}, Lo/acP;->isVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/acR;->a:Lo/acP;

    invoke-virtual {v2}, Lo/acP;->isHidden()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "pinDialog!=null loc:%s, visible:%b, hidden:%b"

    .line 160
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nf_pin"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v1, Lo/acR;->a:Lo/acP;

    invoke-virtual {v1}, Lo/acP;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lo/acR;->a:Lo/acP;

    invoke-virtual {v1}, Lo/acP;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    .line 165
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    sget-object p1, Lo/acR;->a:Lo/acP;

    invoke-virtual {p1}, Lo/acP;->isVisible()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v4

    sget-object p1, Lo/acR;->a:Lo/acP;

    invoke-virtual {p1}, Lo/acP;->isHidden()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "Error.. pinDialog!=null but not visible - killing.. loc:%s, visible:%b, hidden:%b"

    .line 164
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lo/acR;->b()V

    goto :goto_0

    .line 173
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->c:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p0}, Lo/acR;->b()V

    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method public static e()Lo/acR;
    .locals 1

    .line 51
    sget-object v0, Lo/acR;->c:Lo/acR;

    return-object v0
.end method

.method static synthetic e(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/acR;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static j()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 253
    sput-wide v0, Lo/acR;->d:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 238
    invoke-static {}, Lo/acR;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "isActive: %b to: true - registerPinVerifyEvent"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_pin_session"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lo/acR;->d(J)V

    return-void
.end method

.method public a(Lo/Plugin;)V
    .locals 0

    return-void
.end method

.method public a(Lo/Plugin;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    .line 290
    sput-boolean p1, Lo/acR;->e:Z

    const-string p1, "nf_pin"

    const-string p2, "app in foreground "

    .line 291
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 266
    sget-boolean v1, Lo/acR;->e:Z

    .line 267
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/acR;->a:Lo/acP;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "dismissPinVerification appInBackground:%b, pinDialogValid:%b"

    .line 266
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_pin"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Lo/acR;->a:Lo/acP;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Lo/acP;->g()V

    const/4 v0, 0x0

    .line 272
    sput-object v0, Lo/acR;->a:Lo/acP;

    :cond_1
    return-void
.end method

.method public b(Lo/Plugin;)V
    .locals 2

    const-string p1, "nf_pin"

    const-string v0, "app in background"

    .line 283
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lo/acR;->b:J

    const/4 p1, 0x1

    .line 285
    sput-boolean p1, Lo/acR;->e:Z

    return-void
.end method

.method public c(Lo/Plugin;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    .line 193
    invoke-static {}, Lo/acR;->j()V

    return-void
.end method

.method public d(Lo/Plugin;)V
    .locals 0

    return-void
.end method

.method public d(ZZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 228
    invoke-static {}, Lo/acR;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lo/acR;->d(J)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 234
    invoke-static {}, Lo/acR;->c()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "isActive: %b, wasPinProtectedPlayback: %b, wasPreviewProtectedPlayback: %b, extendSession ? %b- registerPlayStopEvent"

    .line 233
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "nf_pin_session"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SPY-17071: verify called while activity is destroyed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SPY-17071: verify called after state saved: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->f()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 86
    invoke-static {}, Lo/ady;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->c()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {p1, v0}, Lo/RL;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lo/BC;

    move-result-object v0

    .line 93
    :cond_3
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->f()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 94
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->l()Lo/zN;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 97
    invoke-interface {v1}, Lo/zN;->t()Z

    move-result v1

    xor-int/2addr v1, v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 101
    :goto_1
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-nez p2, :cond_7

    .line 102
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->e()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 103
    :cond_7
    :goto_3
    invoke-direct {p0, v2, v1}, Lo/acR;->b(ZZ)Z

    move-result p2

    if-nez p2, :cond_8

    if-nez v0, :cond_8

    .line 104
    invoke-static {p1, p3, p4}, Lo/acP;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V

    return-void

    .line 113
    :cond_8
    sget-object p2, Lo/acR;->a:Lo/acP;

    if-eqz p2, :cond_9

    invoke-direct {p0, p3}, Lo/acR;->d(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z

    move-result p2

    if-nez p2, :cond_9

    return-void

    .line 117
    :cond_9
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/NetflixApplication;

    .line 119
    invoke-virtual {p2}, Lcom/netflix/mediaclient/NetflixApplication;->L()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p1, "nf_pin"

    const-string p2, "skip pin dialog - was in background"

    .line 120
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_a
    invoke-virtual {p2}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object p2

    invoke-virtual {p2, p0}, Lo/MimeTypeMap;->b(Lo/JavascriptInterface;)Z

    if-eqz v0, :cond_b

    .line 127
    invoke-static {p1, v0}, Lo/Tm;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lo/Tm;

    move-result-object v6

    .line 128
    sput-object v6, Lo/acR;->a:Lo/acP;

    .line 129
    invoke-virtual {v6}, Lo/Tm;->e()Lio/reactivex/Observable;

    move-result-object p2

    .line 130
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lo/acT;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lo/acT;-><init>(Lo/acR;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;Lo/Tm;)V

    sget-object p3, Lo/acU;->c:Lo/acU;

    .line 131
    invoke-virtual {p2, v0, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_4

    .line 144
    :cond_b
    invoke-static {p3}, Lo/acP;->b(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lo/acP;

    move-result-object p2

    sput-object p2, Lo/acR;->a:Lo/acP;

    .line 145
    sget-object p2, Lo/acR;->a:Lo/acP;

    invoke-virtual {p2, p4}, Lo/acP;->b(Lo/acQ$Application;)V

    .line 147
    :goto_4
    sget-object p2, Lo/acR;->a:Lo/acP;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    const-string p3, "frag_dialog"

    invoke-virtual {p2, p1, p3}, Lo/acP;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lo/Plugin;)V
    .locals 0

    return-void
.end method

.method protected f()Z
    .locals 5

    .line 295
    sget-boolean v0, Lo/acR;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lo/acR;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected i()V
    .locals 2

    const-string v0, "nf_pin"

    const-string v1, "pinDialogDismissed mPinDialog=null"

    .line 277
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 278
    sput-object v0, Lo/acR;->a:Lo/acP;

    return-void
.end method

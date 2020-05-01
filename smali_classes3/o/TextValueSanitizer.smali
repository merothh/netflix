.class public final Lo/TextValueSanitizer;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TextValueSanitizer$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/TextValueSanitizer$TaskDescription;

# The value of this static final field might be set in the static constructor
.field private static final d:Ljava/lang/String; = "nf_update"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/TextValueSanitizer$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/TextValueSanitizer$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/TextValueSanitizer;->a:Lo/TextValueSanitizer$TaskDescription;

    const-string v0, "nf_update"

    .line 33
    sput-object v0, Lo/TextValueSanitizer;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final e(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-static {v1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lo/TextValueSanitizer;->d:Ljava/lang/String;

    const-string v1, "MY_PACKAGE_REPLACED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-direct {p0, p1, p2}, Lo/TextValueSanitizer;->e(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    invoke-static {p1}, Lo/ir;->d(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 17
    sget-object p2, Lo/TextValueSanitizer;->a:Lo/TextValueSanitizer$TaskDescription;

    invoke-virtual {p2, p1}, Lo/TextValueSanitizer$TaskDescription;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 20
    :cond_0
    sget-object p1, Lo/TextValueSanitizer;->d:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Unexpected intent received"

    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

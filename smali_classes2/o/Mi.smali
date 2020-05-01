.class public Lo/Mi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Mi$Activity;
    }
.end annotation


# instance fields
.field private final a:Lo/Mi$Activity;

.field private final e:Lo/adO;


# direct methods
.method public constructor <init>(Lo/Mi$Activity;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lo/adO;

    invoke-direct {v0}, Lo/adO;-><init>()V

    iput-object v0, p0, Lo/Mi;->e:Lo/adO;

    .line 38
    iput-object p1, p0, Lo/Mi;->a:Lo/Mi$Activity;

    return-void
.end method

.method private b(Lo/Mq;)Z
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "null player"

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lo/Mq;->k()Lo/kC;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "nf_key"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p1}, Lo/Mq;->k()Lo/kC;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/Mq;->k()Lo/kC;

    move-result-object p1

    invoke-virtual {p1}, Lo/kC;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method static synthetic e(Lo/Mi;)Lo/Mi$Activity;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/Mi;->a:Lo/Mi$Activity;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/view/KeyEvent;Lo/Am;Lo/Mq;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 49
    :cond_0
    invoke-static {p2}, Lo/Mn;->b(Lo/Am;)Z

    move-result p2

    const-string v1, "nf_key"

    if-nez p2, :cond_1

    const-string p1, "Current mdx target is not available - not handling key event"

    .line 50
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_8

    .line 56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-eq p2, v2, :cond_5

    const/16 v2, 0x19

    if-eq p2, v2, :cond_2

    goto :goto_2

    .line 59
    :cond_2
    invoke-direct {p0, p3}, Lo/Mi;->b(Lo/Mq;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 60
    iget-object p2, p0, Lo/Mi;->e:Lo/adO;

    invoke-virtual {p2, p1}, Lo/adO;->e(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Volume key down is pressed, ignored"

    .line 61
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "Volume key down is pressed, sending..."

    .line 63
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance p2, Lo/Mi$4;

    invoke-direct {p2, p0, p3}, Lo/Mi$4;-><init>(Lo/Mi;Lo/Mq;)V

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    :goto_0
    return v3

    :cond_4
    const-string p1, "Volume key down is pressed, pass it"

    .line 76
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 81
    :cond_5
    invoke-direct {p0, p3}, Lo/Mi;->b(Lo/Mq;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 82
    iget-object p2, p0, Lo/Mi;->e:Lo/adO;

    invoke-virtual {p2, p1}, Lo/adO;->e(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Volume key up is pressed, ignored"

    .line 83
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string p1, "Volume key up is pressed, sending..."

    .line 85
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance p1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance p2, Lo/Mi$2;

    invoke-direct {p2, p0, p3}, Lo/Mi$2;-><init>(Lo/Mi;Lo/Mq;)V

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    :goto_1
    return v3

    :cond_7
    const-string p1, "Volume key up is pressed, pass it"

    .line 98
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    return v0
.end method

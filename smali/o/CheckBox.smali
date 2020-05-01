.class public final Lo/CheckBox;
.super Lo/EditText;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CheckBox$ActionBar;,
        Lo/CheckBox$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/CheckBox$ActionBar;

.field public static final c:Lo/CheckBox$ActionBar;

.field public static final d:Lo/CheckBox$Activity;

.field public static final e:Lo/CheckBox$ActionBar;


# instance fields
.field private final f:Landroid/view/View;

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/Runnable;

.field private final m:Lo/ECPrivateKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/CheckBox$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CheckBox$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/CheckBox;->d:Lo/CheckBox$Activity;

    .line 24
    new-instance v0, Lo/CheckBox$ActionBar$StateListAnimator;

    invoke-direct {v0}, Lo/CheckBox$ActionBar$StateListAnimator;-><init>()V

    check-cast v0, Lo/CheckBox$ActionBar;

    sput-object v0, Lo/CheckBox;->a:Lo/CheckBox$ActionBar;

    .line 26
    new-instance v0, Lo/CheckBox$ActionBar$Application;

    invoke-direct {v0}, Lo/CheckBox$ActionBar$Application;-><init>()V

    check-cast v0, Lo/CheckBox$ActionBar;

    sput-object v0, Lo/CheckBox;->e:Lo/CheckBox$ActionBar;

    .line 28
    new-instance v0, Lo/CheckBox$ActionBar$ActionBar;

    invoke-direct {v0}, Lo/CheckBox$ActionBar$ActionBar;-><init>()V

    check-cast v0, Lo/CheckBox$ActionBar;

    sput-object v0, Lo/CheckBox;->c:Lo/CheckBox$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;Lo/CheckBox$ActionBar;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lo/CheckBox;->d:Lo/CheckBox$Activity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parent.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p3}, Lo/CheckBox$Activity;->b(Lo/CheckBox$Activity;Landroid/content/Context;Lo/CheckBox$ActionBar;)Lo/ECPrivateKeySpec;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lo/CheckBox;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;Lo/ECPrivateKeySpec;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;Lo/ECPrivateKeySpec;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->x:I

    invoke-direct {p0, p1, p2, v0}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;I)V

    iput-object p1, p0, Lo/CheckBox;->f:Landroid/view/View;

    iput-object p3, p0, Lo/CheckBox;->m:Lo/ECPrivateKeySpec;

    .line 69
    new-instance p1, Lo/CheckBox$TaskDescription;

    invoke-direct {p1, p0}, Lo/CheckBox$TaskDescription;-><init>(Lo/CheckBox;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/CheckBox;->g:Ljava/lang/Runnable;

    .line 78
    new-instance p1, Lo/CheckBox$Application;

    invoke-direct {p1, p0}, Lo/CheckBox$Application;-><init>(Lo/CheckBox;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/CheckBox;->h:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1}, Lo/CheckBox;->c(Z)V

    .line 90
    iget-object p1, p0, Lo/CheckBox;->i:Landroid/view/View;

    new-instance p2, Lo/CheckBox$4;

    invoke-direct {p2, p0}, Lo/CheckBox$4;-><init>(Lo/CheckBox;)V

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static final synthetic b(Lo/CheckBox;)Lo/ECPrivateKeySpec;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/CheckBox;->m:Lo/ECPrivateKeySpec;

    return-object p0
.end method

.method public static final synthetic d(Lo/CheckBox;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/CheckBox;->e()V

    return-void
.end method

.method private final e()V
    .locals 3

    .line 122
    invoke-static {}, Lo/adu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lo/CheckBox;->m:Lo/ECPrivateKeySpec;

    if-eqz v0, :cond_1

    .line 128
    iget-object v1, p0, Lo/CheckBox;->i:Landroid/view/View;

    const-string v2, "loading"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->start()V

    :cond_1
    return-void
.end method

.method private final i()V
    .locals 3

    .line 136
    invoke-static {}, Lo/adu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lo/CheckBox;->i:Landroid/view/View;

    const-string v1, "loading"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    instance-of v2, v0, Lo/ECPrivateKeySpec;

    if-eqz v2, :cond_2

    .line 143
    check-cast v0, Lo/ECPrivateKeySpec;

    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->stop()V

    .line 146
    :cond_1
    iget-object v0, p0, Lo/CheckBox;->i:Landroid/view/View;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 116
    iget-object v0, p0, Lo/CheckBox;->j:Landroid/os/Handler;

    iget-object v1, p0, Lo/CheckBox;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object v0, p0, Lo/CheckBox;->j:Landroid/os/Handler;

    iget-object v1, p0, Lo/CheckBox;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    invoke-direct {p0}, Lo/CheckBox;->i()V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lo/CheckBox;->c()V

    .line 104
    invoke-super {p0, p1}, Lo/EditText;->a(Z)V

    .line 105
    iget-object v0, p0, Lo/CheckBox;->i:Landroid/view/View;

    const-string v1, "loading"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    sget-object p1, Lo/CheckBox;->d:Lo/CheckBox$Activity;

    check-cast p1, Lo/MessagePdu;

    goto :goto_1

    .line 108
    :cond_0
    sget-object v0, Lo/CheckBox;->d:Lo/CheckBox$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 109
    iget-object v0, p0, Lo/CheckBox;->j:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lo/CheckBox;->h:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/CheckBox;->g:Ljava/lang/Runnable;

    .line 111
    :goto_0
    sget-wide v1, Lo/EditText;->b:J

    .line 109
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

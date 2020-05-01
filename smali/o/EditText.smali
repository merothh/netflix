.class public Lo/EditText;
.super Lo/DatePickerCalendarDelegate;
.source ""


# static fields
.field protected static final b:J


# instance fields
.field private final c:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;

.field protected final i:Landroid/view/View;

.field protected final j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lo/adu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x96

    :goto_0
    sput-wide v0, Lo/EditText;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V
    .locals 1

    .line 29
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jI:I

    invoke-direct {p0, p1, p2, v0}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;I)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lo/EditText;->c(Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;I)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Lo/DatePickerCalendarDelegate;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    .line 99
    new-instance p2, Lo/EditText$3;

    invoke-direct {p2, p0}, Lo/EditText$3;-><init>(Lo/EditText;)V

    iput-object p2, p0, Lo/EditText;->e:Ljava/lang/Runnable;

    .line 111
    new-instance p2, Lo/EditText$1;

    invoke-direct {p2, p0}, Lo/EditText$1;-><init>(Lo/EditText;)V

    iput-object p2, p0, Lo/EditText;->c:Ljava/lang/Runnable;

    .line 40
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lo/EditText;->j:Landroid/os/Handler;

    .line 41
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/EditText;->i:Landroid/view/View;

    .line 43
    iget-object p1, p0, Lo/EditText;->i:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lo/EditText;->c()V

    .line 49
    invoke-super {p0, p1}, Lo/DatePickerCalendarDelegate;->a(Z)V

    .line 50
    iget-object v0, p0, Lo/EditText;->i:Landroid/view/View;

    invoke-static {v0, p1}, Lo/aeV;->c(Landroid/view/View;Z)V

    return-void
.end method

.method public b()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-virtual {p0}, Lo/EditText;->c()V

    const/4 v0, 0x0

    .line 72
    invoke-super {p0, v0}, Lo/DatePickerCalendarDelegate;->a(Z)V

    .line 73
    iget-object v1, p0, Lo/EditText;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "LoadingAndErrorWrapper"

    const-string v1, "Loading view is already visible - skipping"

    .line 74
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lo/EditText;->i:Landroid/view/View;

    invoke-static {v1, v0}, Lo/aeV;->d(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lo/EditText;->c()V

    .line 56
    invoke-super {p0, p1}, Lo/DatePickerCalendarDelegate;->b(Z)V

    .line 57
    iget-object v0, p0, Lo/EditText;->i:Landroid/view/View;

    invoke-static {v0, p1}, Lo/aeV;->c(Landroid/view/View;Z)V

    return-void
.end method

.method protected c()V
    .locals 2

    .line 95
    iget-object v0, p0, Lo/EditText;->j:Landroid/os/Handler;

    iget-object v1, p0, Lo/EditText;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v0, p0, Lo/EditText;->j:Landroid/os/Handler;

    iget-object v1, p0, Lo/EditText;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(IIII)V
    .locals 1

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Lo/DatePickerCalendarDelegate;->c(IIII)V

    .line 126
    iget-object v0, p0, Lo/EditText;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lo/EditText;->c()V

    .line 82
    invoke-super {p0, p1}, Lo/DatePickerCalendarDelegate;->a(Z)V

    .line 83
    iget-object v0, p0, Lo/EditText;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "LoadingAndErrorWrapper"

    if-nez v0, :cond_0

    const-string p1, "Loading view is already visible - skipping"

    .line 84
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v0, "Showing loading view after delay"

    .line 87
    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lo/EditText;->j:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/EditText;->c:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/EditText;->e:Ljava/lang/Runnable;

    :goto_0
    sget-wide v1, Lo/EditText;->b:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public e(IZZ)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lo/EditText;->c()V

    .line 63
    invoke-super {p0, p1, p2, p3}, Lo/DatePickerCalendarDelegate;->e(IZZ)V

    .line 64
    iget-object p1, p0, Lo/EditText;->i:Landroid/view/View;

    invoke-static {p1, p3}, Lo/aeV;->c(Landroid/view/View;Z)V

    return-void
.end method

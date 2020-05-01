.class public final Lo/NotifyingApp;
.super Lo/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NotifyingApp$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/NotifyingApp$TaskDescription;


# instance fields
.field private c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/NotifyingApp$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/NotifyingApp$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/NotifyingApp;->d:Lo/NotifyingApp$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    return-void
.end method

.method private final d(Landroid/view/View;)V
    .locals 1

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/GridView;

    .line 53
    new-instance v0, Lo/NotifyingApp$ActionBar;

    invoke-direct {v0, p0}, Lo/NotifyingApp$ActionBar;-><init>(Lo/NotifyingApp;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lo/NotifyingApp;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->ae:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lo/NotifyingApp;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "showCVVTrustMessage"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 39
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->dI:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "v.findViewById<TextView>(R.id.cvvTrustMessage)"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const-string p2, "v"

    .line 41
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/NotifyingApp;->d(Landroid/view/View;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/WebChromeClient;->onDestroyView()V

    invoke-virtual {p0}, Lo/NotifyingApp;->e()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 46
    invoke-super {p0}, Lo/WebChromeClient;->onStart()V

    .line 47
    invoke-virtual {p0}, Lo/NotifyingApp;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 48
    :cond_0
    invoke-direct {p0}, Lo/NotifyingApp;->a()V

    return-void
.end method

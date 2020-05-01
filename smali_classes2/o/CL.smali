.class public final Lo/CL;
.super Lo/CI;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "netflixAppUpdateDialog"

    .line 11
    invoke-direct {p0, v0}, Lo/CI;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lo/ScrollBarDrawable$ActionBar;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/ScrollBarDrawable$ActionBar;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 15
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ScrollBarDrawable$ActionBar;->a(Ljava/lang/CharSequence;)Lo/ScrollBarDrawable$ActionBar;

    const/4 v1, 0x1

    const-string v2, "nfUpdate"

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p0, v2, v3}, Lo/CL;->d(Ljava/lang/String;Z)V

    .line 18
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ho:I

    invoke-virtual {v0, p2}, Lo/ScrollBarDrawable$ActionBar;->e(I)Lo/ScrollBarDrawable$ActionBar;

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lo/CL;->b()Z

    move-result p2

    .line 21
    move-object v4, p0

    check-cast v4, Lo/MessagePdu;

    if-eqz p2, :cond_1

    .line 23
    invoke-virtual {p0, v2, v1}, Lo/CL;->d(Ljava/lang/String;Z)V

    .line 24
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->eg:I

    invoke-virtual {v0, p2}, Lo/ScrollBarDrawable$ActionBar;->e(I)Lo/ScrollBarDrawable$ActionBar;

    .line 25
    invoke-virtual {v0, v3}, Lo/ScrollBarDrawable$ActionBar;->b(Z)Lo/ScrollBarDrawable$ActionBar;

    .line 26
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    new-instance v2, Lo/CL$Activity;

    invoke-direct {v2, p0, p1}, Lo/CL$Activity;-><init>(Lo/CL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p2, v2}, Lo/ScrollBarDrawable$ActionBar;->c(ILandroid/content/DialogInterface$OnClickListener;)Lo/ScrollBarDrawable$ActionBar;

    .line 36
    :goto_0
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v2, Lo/CL$StateListAnimator;

    invoke-direct {v2, p0, p1}, Lo/CL$StateListAnimator;-><init>(Lo/CL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p2, v2}, Lo/ScrollBarDrawable$ActionBar;->a(ILandroid/content/DialogInterface$OnClickListener;)Lo/ScrollBarDrawable$ActionBar;

    .line 52
    invoke-virtual {v0}, Lo/ScrollBarDrawable$ActionBar;->c()Lo/PendingIntent;

    return v1

    :cond_1
    return v3
.end method

.class Lo/acP$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic c:Lo/acP;


# direct methods
.method private constructor <init>(Lo/acP;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lo/acP$Activity;->c:Lo/acP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/acP;Lo/acP$4;)V
    .locals 0

    .line 298
    invoke-direct {p0, p1}, Lo/acP$Activity;-><init>(Lo/acP;)V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    return p3

    .line 307
    :cond_0
    iget-object p2, p0, Lo/acP$Activity;->c:Lo/acP;

    invoke-static {p2}, Lo/acP;->d(Lo/acP;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    return v0

    .line 312
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 313
    iget-object p2, p0, Lo/acP$Activity;->c:Lo/acP;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v1}, Lo/acP;->a(Lo/acP;I)Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    .line 317
    :cond_2
    iget-object p2, p0, Lo/acP$Activity;->c:Lo/acP;

    invoke-virtual {p2}, Lo/acP;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p1, "nf_pin"

    const-string p2, "activity is null"

    .line 319
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 323
    :cond_3
    iget-object v0, p0, Lo/acP$Activity;->c:Lo/acP;

    invoke-virtual {v0, p2, p1}, Lo/acP;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    return p3
.end method

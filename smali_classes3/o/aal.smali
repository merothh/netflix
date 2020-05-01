.class public abstract Lo/aal;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aal$Activity;,
        Lo/aal$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/aal$Activity;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Lo/aal$StateListAnimator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private f:Landroid/view/View$OnClickListener;

.field public h:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aal$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aal$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/aal;->i:Lo/aal$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/aal;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 45
    sget v0, Lo/Zt$LoaderManager;->i:I

    return v0
.end method

.method public synthetic b(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/aal$Activity;

    invoke-virtual {p0, p1}, Lo/aal;->c(Lo/aal$Activity;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/aal$Activity;

    invoke-virtual {p0, p1}, Lo/aal;->d(Lo/aal$Activity;)V

    return-void
.end method

.method public c(Lo/aal$Activity;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object p1, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    iget-object v0, p0, Lo/aal;->h:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-nez v0, :cond_0

    const-string v1, "itemTrackingInfoHolder"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v0}, Lo/Zy;->a(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lo/aal;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/aal$Activity;

    invoke-virtual {p0, p1}, Lo/aal;->d(Lo/aal$Activity;)V

    return-void
.end method

.method public d(Lo/aal$Activity;)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lo/aal$Activity;->d()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/aal;->b:Ljava/lang/String;

    const-string v2, "title"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p1}, Lo/aal$Activity;->c()Lo/BaseAdapter;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lo/aal;->a:Ljava/lang/String;

    const-string v3, "preQueryImgUrl"

    if-nez v1, :cond_1

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    const/16 v1, 0x8

    .line 66
    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 69
    :cond_4
    invoke-virtual {v0, v5}, Lo/BaseAdapter;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lo/aal;->a:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v1}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 72
    :goto_2
    invoke-virtual {p1}, Lo/aal$Activity;->a()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lo/amj;->c:Lo/amj;

    .line 73
    invoke-virtual {p1}, Lo/aal$Activity;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "holder.playIcon.context"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lo/Zt$Fragment;->d:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "holder.playIcon.context.\u2026.accesibility_play_video)"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Object;

    .line 74
    iget-object v4, p0, Lo/aal;->b:Ljava/lang/String;

    if-nez v4, :cond_6

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    aput-object v4, v3, v5

    .line 72
    array-length v2, v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1}, Lo/aal$Activity;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/aal;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p1}, Lo/aal$Activity;->a()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lo/aal;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(III)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/aal$Activity;

    invoke-virtual {p0, p1}, Lo/aal;->c(Lo/aal$Activity;)V

    return-void
.end method

.method public final k()Landroid/view/View$OnClickListener;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/aal;->f:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final l()Landroid/view/View$OnClickListener;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/aal;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method

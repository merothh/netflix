.class public abstract Lo/aac;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aac$Activity;,
        Lo/aac$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/aac$Activity;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/aac$TaskDescription;


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private c:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lo/UpdateEngine;

.field private j:Ljava/lang/String;

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aac$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aac$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/aac;->b:Lo/aac$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/aac;->j:Ljava/lang/String;

    return-void
.end method

.method public final a(Lo/UpdateEngine;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/aac;->i:Lo/UpdateEngine;

    return-void
.end method

.method public a(Lo/aac$Activity;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lo/aac;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    invoke-virtual {p1}, Lo/aac$Activity;->c()Lo/GridView;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v1}, Lo/GridView;->setVisibility(I)V

    .line 47
    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    iget-object v2, p0, Lo/aac;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 48
    iget-object v0, p0, Lo/aac;->c:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lo/aac;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lo/GridView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lo/aac;->l:Z

    return-void
.end method

.method protected b()I
    .locals 1

    .line 86
    sget v0, Lo/Zt$LoaderManager;->e:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 38
    iput p1, p0, Lo/aac;->f:I

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lo/aac$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aac;->c(ILo/aac$Activity;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lo/aac;->h:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p2, Lo/aac$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aac;->c(ILo/aac$Activity;)V

    return-void
.end method

.method public c(ILo/aac$Activity;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lo/aac;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p2}, Lo/aac$Activity;->c()Lo/GridView;

    move-result-object v0

    invoke-virtual {p2}, Lo/aac$Activity;->d()Lo/ECPrivateKeySpec;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/GridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-boolean v0, p0, Lo/aac;->l:Z

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lo/aac;->i:Lo/UpdateEngine;

    if-eqz v0, :cond_1

    .line 64
    const-class v1, Lo/ZR;

    new-instance v2, Lo/ZR$Dialog;

    iget v3, p0, Lo/aac;->f:I

    invoke-direct {v2, v3}, Lo/ZR$Dialog;-><init>(I)V

    check-cast v2, Lo/VintfObject;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_1
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lo/aac;->l:Z

    .line 69
    :cond_2
    invoke-virtual {p2}, Lo/aac$Activity;->d()Lo/ECPrivateKeySpec;

    move-result-object p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p2}, Lo/ECPrivateKeySpec;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 78
    invoke-virtual {p2}, Lo/ECPrivateKeySpec;->stop()V

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p2}, Lo/ECPrivateKeySpec;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5

    .line 73
    invoke-virtual {p2}, Lo/ECPrivateKeySpec;->start()V

    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/aac$Activity;

    invoke-virtual {p0, p1}, Lo/aac;->a(Lo/aac$Activity;)V

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 33
    iput p1, p0, Lo/aac;->g:I

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/aac;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/aac$Activity;

    invoke-virtual {p0, p1}, Lo/aac;->a(Lo/aac$Activity;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lo/aac;->c:Ljava/lang/String;

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lo/aac;->m:Z

    return-void
.end method

.method public final h()Landroid/view/View$OnClickListener;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/aac;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/aac;->h:Ljava/lang/String;

    return-object v0
.end method

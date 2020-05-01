.class public abstract Lo/FT;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FT$TaskDescription;,
        Lo/FT$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/FT$TaskDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/FT$ActionBar;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private g:Landroid/view/View$OnClickListener;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/FT$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/FT$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/FT;->c:Lo/FT$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/FT;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 27
    sget v0, Lo/FW$Activity;->e:I

    return v0
.end method

.method public final b_(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lo/FT;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 15
    move-object v5, p5

    check-cast v5, Lo/FT$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/FT;->d(FFIILo/FT$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 15
    check-cast p1, Lo/FT$TaskDescription;

    invoke-virtual {p0, p1}, Lo/FT;->e(Lo/FT$TaskDescription;)V

    return-void
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p5, Lo/FT$TaskDescription;

    invoke-virtual/range {p0 .. p5}, Lo/FT;->d(FFIILo/FT$TaskDescription;)V

    return-void
.end method

.method public d(FFIILo/FT$TaskDescription;)V
    .locals 0

    const-string p1, "view"

    invoke-static {p5, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/FT$TaskDescription;

    invoke-virtual {p0, p1}, Lo/FT;->e(Lo/FT$TaskDescription;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/FT;->b:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/FT;->j:Ljava/lang/String;

    return-void
.end method

.method public e(Lo/FT$TaskDescription;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p1

    check-cast v0, Lo/TimeUnit;

    invoke-super {p0, v0}, Lo/IntBinaryOperator;->c(Lo/TimeUnit;)V

    .line 34
    iget-object v0, p0, Lo/FT;->j:Ljava/lang/String;

    .line 35
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {p1}, Lo/FT$TaskDescription;->a()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0}, Lo/GridView;->l()V

    .line 37
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoxshotUrl is empty for videoId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/FT;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {p1}, Lo/FT$TaskDescription;->a()Lo/GridView;

    move-result-object v1

    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v3, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    sget-object v3, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v0, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 41
    :goto_2
    invoke-virtual {p1}, Lo/FT$TaskDescription;->a()Lo/GridView;

    move-result-object v0

    iget-object v1, p0, Lo/FT;->b:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p1}, Lo/FT$TaskDescription;->a()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/GridView;->setFocusable(Z)V

    .line 44
    invoke-virtual {p1}, Lo/FT$TaskDescription;->a()Lo/GridView;

    move-result-object v0

    sget v1, Lo/FW$ActionBar;->a:I

    invoke-virtual {v0, v1}, Lo/GridView;->setBackgroundResource(I)V

    .line 45
    invoke-virtual {p1}, Lo/FT$TaskDescription;->a()Lo/GridView;

    move-result-object p1

    iget-object v0, p0, Lo/FT;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/FT;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Landroid/view/View$OnClickListener;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/FT;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/FT;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected m()Lo/FT$TaskDescription;
    .locals 1

    .line 29
    new-instance v0, Lo/FT$TaskDescription;

    invoke-direct {v0}, Lo/FT$TaskDescription;-><init>()V

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lo/FT;->m()Lo/FT$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/FT;->j:Ljava/lang/String;

    return-object v0
.end method

.class final Lo/AutoCompleteTextView$Activity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AutoCompleteTextView$Activity;->e(Lcom/netflix/model/leafs/VideoInfo$Sharing;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        "Lo/AdapterViewFlipper$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/AutoCompleteTextView$Activity;


# direct methods
.method constructor <init>(Lo/AutoCompleteTextView$Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/AutoCompleteTextView$Activity$5;->d:Lo/AutoCompleteTextView$Activity;

    iput-object p2, p0, Lo/AutoCompleteTextView$Activity$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lo/AutoCompleteTextView$Activity$5;->b(Ljava/io/File;Ljava/io/File;)Lo/AdapterViewFlipper$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/io/File;Ljava/io/File;)Lo/AdapterViewFlipper$StateListAnimator;
    .locals 4

    const-string v0, "background"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxart"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lo/AutoCompleteTextView$Activity$5;->d:Lo/AutoCompleteTextView$Activity;

    iget-object v0, v0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v0}, Lo/AutoCompleteTextView;->d()Lo/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AbsSpinner;->e(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lo/AutoCompleteTextView$Activity$5;->d:Lo/AutoCompleteTextView$Activity;

    iget-object v0, v0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v0}, Lo/AutoCompleteTextView;->d()Lo/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/AbsSpinner;->e(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 95
    new-instance v0, Lo/AdapterViewFlipper$Activity;

    .line 96
    iget-object v1, p0, Lo/AutoCompleteTextView$Activity$5;->d:Lo/AutoCompleteTextView$Activity;

    iget v1, v1, Lo/AutoCompleteTextView$Activity;->e:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 97
    iget-object v3, p0, Lo/AutoCompleteTextView$Activity$5;->d:Lo/AutoCompleteTextView$Activity;

    iget v3, v3, Lo/AutoCompleteTextView$Activity;->h:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    .line 95
    invoke-direct {v0, v1, v2, v3, v3}, Lo/AdapterViewFlipper$Activity;-><init>(IIFF)V

    .line 101
    new-instance v1, Lo/AdapterViewFlipper$StateListAnimator;

    .line 105
    iget-object v2, p0, Lo/AutoCompleteTextView$Activity$5;->b:Ljava/lang/String;

    .line 101
    invoke-direct {v1, p1, p2, v0, v2}, Lo/AdapterViewFlipper$StateListAnimator;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lo/AdapterViewFlipper$Activity;Ljava/lang/String;)V

    return-object v1
.end method

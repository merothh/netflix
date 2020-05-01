.class final Lo/AutoCompleteTextView$Activity$2;
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
.field final synthetic c:Lo/AutoCompleteTextView$Activity;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/AutoCompleteTextView$Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/AutoCompleteTextView$Activity$2;->c:Lo/AutoCompleteTextView$Activity;

    iput-object p2, p0, Lo/AutoCompleteTextView$Activity$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lo/AutoCompleteTextView$Activity$2;->e(Ljava/io/File;Ljava/io/File;)Lo/AdapterViewFlipper$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/io/File;Ljava/io/File;)Lo/AdapterViewFlipper$StateListAnimator;
    .locals 10

    const-string v0, "background"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foreground"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lo/AutoCompleteTextView$Activity$2;->c:Lo/AutoCompleteTextView$Activity;

    iget-object v0, v0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v0}, Lo/AutoCompleteTextView;->d()Lo/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AbsSpinner;->e(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lo/AutoCompleteTextView$Activity$2;->c:Lo/AutoCompleteTextView$Activity;

    iget-object v0, v0, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v0}, Lo/AutoCompleteTextView;->c()Lo/WebViewUpdateService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/WebViewUpdateService;->b(Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lo/AutoCompleteTextView$Activity$2;->c:Lo/AutoCompleteTextView$Activity;

    iget-object v1, v1, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v1}, Lo/AutoCompleteTextView;->d()Lo/AbsSpinner;

    move-result-object v1

    invoke-virtual {v1, p2}, Lo/AbsSpinner;->e(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 53
    iget-object v1, p0, Lo/AutoCompleteTextView$Activity$2;->c:Lo/AutoCompleteTextView$Activity;

    iget-object v1, v1, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    invoke-virtual {v1}, Lo/AutoCompleteTextView;->c()Lo/WebViewUpdateService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lo/WebViewUpdateService;->b(Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lo/AutoCompleteTextView$Activity$2;->c:Lo/AutoCompleteTextView$Activity;

    iget-object v3, v2, Lo/AutoCompleteTextView$Activity;->b:Lo/AutoCompleteTextView;

    .line 56
    iget-object v2, p0, Lo/AutoCompleteTextView$Activity$2;->c:Lo/AutoCompleteTextView$Activity;

    iget v4, v2, Lo/AutoCompleteTextView$Activity;->e:I

    .line 57
    iget-object v2, p0, Lo/AutoCompleteTextView$Activity$2;->c:Lo/AutoCompleteTextView$Activity;

    iget v5, v2, Lo/AutoCompleteTextView$Activity;->h:I

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 60
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 61
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 55
    invoke-virtual/range {v3 .. v9}, Lo/AutoCompleteTextView;->d(IIIIII)Lo/AdapterViewFlipper$Activity;

    move-result-object v0

    .line 63
    new-instance v1, Lo/AdapterViewFlipper$StateListAnimator;

    .line 67
    iget-object v2, p0, Lo/AutoCompleteTextView$Activity$2;->e:Ljava/lang/String;

    .line 63
    invoke-direct {v1, p1, p2, v0, v2}, Lo/AdapterViewFlipper$StateListAnimator;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lo/AdapterViewFlipper$Activity;Ljava/lang/String;)V

    return-object v1
.end method

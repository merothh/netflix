.class Lo/Jw$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lo/Jw$6;->b:Lo/Jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(I)Z
    .locals 1

    .line 299
    sget v0, Lcom/netflix/mediaclient/ui/R$LoaderManager;->d:I

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 291
    invoke-direct {p0, p2}, Lo/Jw$6;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Lo/Jw$6;->b:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->d(Lo/Jw;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

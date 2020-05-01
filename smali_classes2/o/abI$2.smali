.class Lo/abI$2;
.super Lo/aby;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abI;->i()Lo/aby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/abI;

.field private b:Lo/abE;

.field e:Z


# direct methods
.method constructor <init>(Lo/abI;Lo/abI;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lo/abI$2;->a:Lo/abI;

    invoke-direct {p0, p2}, Lo/aby;-><init>(Lo/abI;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2}, Lo/aby;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 136
    iget-boolean p1, p0, Lo/abI$2;->e:Z

    if-nez p1, :cond_0

    .line 137
    iget-object p1, p0, Lo/abI$2;->a:Lo/abI;

    iget-object p2, p0, Lo/abI$2;->b:Lo/abE;

    invoke-virtual {p1, p2}, Lo/abI;->a(Lo/abE;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2, p3}, Lo/aby;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lo/abI$2;->e:Z

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lo/abI$2;->b:Lo/abE;

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lo/aby;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance p1, Lo/abE;

    invoke-direct {p1, p2, p3, p4}, Lo/abE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lo/abI$2;->b:Lo/abE;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lo/abI$2;->e:Z

    .line 129
    iget-object v0, p0, Lo/abI$2;->a:Lo/abI;

    invoke-virtual {v0, p2}, Lo/abI;->a(Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1, p2}, Lo/aby;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

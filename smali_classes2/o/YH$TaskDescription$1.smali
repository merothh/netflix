.class final Lo/YH$TaskDescription$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YH$TaskDescription;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/YH$TaskDescription;


# direct methods
.method constructor <init>(Lo/YH$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lo/YH$TaskDescription$1;->a:Lo/YH$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lo/YH$TaskDescription$1;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 97
    new-instance v1, Lo/YI;

    const-string v0, "blurredBitmap"

    .line 98
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lo/YH$TaskDescription$1;->a:Lo/YH$TaskDescription;

    iget-object v0, v0, Lo/YH$TaskDescription;->d:Lo/Yn;

    invoke-virtual {v0}, Lo/Yn;->isOriginal()Z

    move-result v0

    .line 100
    iget-object v2, p0, Lo/YH$TaskDescription$1;->a:Lo/YH$TaskDescription;

    iget-object v2, v2, Lo/YH$TaskDescription;->d:Lo/Yn;

    invoke-virtual {v2}, Lo/Yn;->getForegroundColor()I

    move-result v2

    .line 101
    iget-object v3, p0, Lo/YH$TaskDescription$1;->a:Lo/YH$TaskDescription;

    iget-object v3, v3, Lo/YH$TaskDescription;->d:Lo/Yn;

    invoke-virtual {v3}, Lo/Yn;->getBackgroundColor()I

    move-result v3

    .line 97
    invoke-direct {v1, p1, v0, v2, v3}, Lo/YI;-><init>(Landroid/graphics/Bitmap;ZII)V

    .line 103
    iget-object p1, p0, Lo/YH$TaskDescription$1;->a:Lo/YH$TaskDescription;

    iget-object v0, p1, Lo/YH$TaskDescription;->a:Lo/YH;

    iget-object p1, p0, Lo/YH$TaskDescription$1;->a:Lo/YH$TaskDescription;

    iget v2, p1, Lo/YH$TaskDescription;->e:I

    iget-object p1, p0, Lo/YH$TaskDescription$1;->a:Lo/YH$TaskDescription;

    iget-object v3, p1, Lo/YH$TaskDescription;->d:Lo/Yn;

    iget-object p1, p0, Lo/YH$TaskDescription$1;->a:Lo/YH$TaskDescription;

    iget-object v4, p1, Lo/YH$TaskDescription;->b:Ljava/lang/String;

    iget-object p1, p0, Lo/YH$TaskDescription$1;->a:Lo/YH$TaskDescription;

    iget-object v5, p1, Lo/YH$TaskDescription;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lo/YH;->d(Lo/YH;Lo/YI;ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

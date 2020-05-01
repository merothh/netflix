.class Lo/CrossProcessCursor$Activity$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BulkCursorNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrossProcessCursor$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BulkCursorNative<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:I

.field final synthetic e:Lo/CrossProcessCursor$Activity;


# direct methods
.method public constructor <init>(Lo/CrossProcessCursor$Activity;I)V
    .locals 0

    .line 282
    iput-object p1, p0, Lo/CrossProcessCursor$Activity$TaskDescription;->e:Lo/CrossProcessCursor$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p2, p0, Lo/CrossProcessCursor$Activity$TaskDescription;->b:I

    return-void
.end method


# virtual methods
.method public a(Lo/XmlResourceParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 288
    invoke-interface {p1}, Lo/XmlResourceParser;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lo/CrossProcessCursor$Activity$TaskDescription;->e:Lo/CrossProcessCursor$Activity;

    iget v1, p0, Lo/CrossProcessCursor$Activity$TaskDescription;->b:I

    invoke-static {v0, v1, p1}, Lo/CrossProcessCursor$Activity;->d(Lo/CrossProcessCursor$Activity;ILo/XmlResourceParser;)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-interface {p1}, Lo/XmlResourceParser;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lo/CrossProcessCursor$Activity$TaskDescription;->e:Lo/CrossProcessCursor$Activity;

    iget v1, p0, Lo/CrossProcessCursor$Activity$TaskDescription;->b:I

    invoke-static {v0, v1, p1}, Lo/CrossProcessCursor$Activity;->b(Lo/CrossProcessCursor$Activity;ILo/XmlResourceParser;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lo/XmlResourceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 306
    iget v0, p0, Lo/CrossProcessCursor$Activity$TaskDescription;->b:I

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lo/CrossProcessCursor$Activity$TaskDescription;->e:Lo/CrossProcessCursor$Activity;

    invoke-interface {p1}, Lo/XmlResourceParser;->f()F

    move-result p1

    invoke-virtual {v0, p1}, Lo/CrossProcessCursor$Activity;->d(F)Z

    :cond_0
    return-void
.end method

.method public c(Lo/XmlResourceParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Lo/XmlResourceParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lo/CrossProcessCursor$Activity$TaskDescription;->e:Lo/CrossProcessCursor$Activity;

    iget v1, p0, Lo/CrossProcessCursor$Activity$TaskDescription;->b:I

    invoke-static {v0, v1, p1}, Lo/CrossProcessCursor$Activity;->b(Lo/CrossProcessCursor$Activity;ILo/XmlResourceParser;)V

    return-void
.end method

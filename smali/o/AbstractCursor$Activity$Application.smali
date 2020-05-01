.class Lo/AbstractCursor$Activity$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BulkCursorNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AbstractCursor$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/BulkCursorNative<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/AbstractCursor$Activity;


# direct methods
.method private constructor <init>(Lo/AbstractCursor$Activity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lo/AbstractCursor$Activity$Application;->b:Lo/AbstractCursor$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/AbstractCursor$Activity;Lo/AbstractCursor$2;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lo/AbstractCursor$Activity$Application;-><init>(Lo/AbstractCursor$Activity;)V

    return-void
.end method


# virtual methods
.method public a(Lo/XmlResourceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Lo/XmlResourceParser;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lo/AbstractCursor$Activity$Application;->b:Lo/AbstractCursor$Activity;

    invoke-static {v0, p1}, Lo/AbstractCursor$Activity;->b(Lo/AbstractCursor$Activity;Lo/XmlResourceParser;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p1}, Lo/XmlResourceParser;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lo/AbstractCursor$Activity$Application;->b:Lo/AbstractCursor$Activity;

    invoke-static {v0, p1}, Lo/AbstractCursor$Activity;->e(Lo/AbstractCursor$Activity;Lo/XmlResourceParser;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lo/XmlResourceParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lo/AbstractCursor$Activity$Application;->b:Lo/AbstractCursor$Activity;

    invoke-virtual {v0}, Lo/AbstractCursor$Activity;->f()F

    move-result v0

    .line 227
    iget-object v1, p0, Lo/AbstractCursor$Activity$Application;->b:Lo/AbstractCursor$Activity;

    invoke-interface {p1}, Lo/XmlResourceParser;->f()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Lo/AbstractCursor$Activity;->d(F)Z

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lo/AbstractCursor$Activity$Application;->b:Lo/AbstractCursor$Activity;

    invoke-static {v0, p1}, Lo/AbstractCursor$Activity;->e(Lo/AbstractCursor$Activity;Lo/XmlResourceParser;)V

    return-void
.end method

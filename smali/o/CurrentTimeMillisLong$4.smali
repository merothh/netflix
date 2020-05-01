.class Lo/CurrentTimeMillisLong$4;
.super Landroid/graphics/Paint;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CurrentTimeMillisLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/CurrentTimeMillisLong;


# direct methods
.method constructor <init>(Lo/CurrentTimeMillisLong;I)V
    .locals 0

    .line 43
    iput-object p1, p0, Lo/CurrentTimeMillisLong$4;->e:Lo/CurrentTimeMillisLong;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 44
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lo/CurrentTimeMillisLong$4;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

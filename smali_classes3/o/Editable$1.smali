.class Lo/Editable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TruncateAt$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Editable;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Editable;


# direct methods
.method constructor <init>(Lo/Editable;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lo/Editable$1;->a:Lo/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 0

    .line 34
    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

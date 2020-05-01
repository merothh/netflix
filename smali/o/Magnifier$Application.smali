.class final Lo/Magnifier$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Magnifier;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Magnifier;


# direct methods
.method constructor <init>(Lo/Magnifier;)V
    .locals 0

    iput-object p1, p0, Lo/Magnifier$Application;->e:Lo/Magnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lo/Magnifier$Application;->e:Lo/Magnifier;

    invoke-static {v0}, Lo/Magnifier;->b(Lo/Magnifier;)Lo/Magnifier$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/Magnifier$Application;->e:Lo/Magnifier;

    invoke-virtual {v1}, Lo/Magnifier;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/Magnifier$TaskDescription;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

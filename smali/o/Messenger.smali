.class public final Lo/Messenger;
.super Landroid/graphics/drawable/GradientDrawable;
.source ""


# instance fields
.field private e:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()[I
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lo/Messenger;->getColors()[I

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lo/Messenger;->e:[I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setColors([I)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 22
    iput-object p1, p0, Lo/Messenger;->e:[I

    return-void
.end method

.method public setColors([I[F)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    .line 28
    iput-object p1, p0, Lo/Messenger;->e:[I

    return-void
.end method

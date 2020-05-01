.class Lo/ContentResolver$Activity;
.super Lo/ContentResolver$LoaderManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field private final b:Landroid/graphics/drawable/Animatable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-direct {p0, v0}, Lo/ContentResolver$LoaderManager;-><init>(Lo/ContentResolver$3;)V

    .line 370
    iput-object p1, p0, Lo/ContentResolver$Activity;->b:Landroid/graphics/drawable/Animatable;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 380
    iget-object v0, p0, Lo/ContentResolver$Activity;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 375
    iget-object v0, p0, Lo/ContentResolver$Activity;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

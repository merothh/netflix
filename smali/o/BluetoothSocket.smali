.class public final Lo/BluetoothSocket;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Slice;
.implements Lo/TransactionExecutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Slice<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lo/TransactionExecutor;"
    }
.end annotation


# instance fields
.field private final d:Landroid/content/res/Resources;

.field private final e:Lo/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Slice<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lo/Slice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lo/Slice<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lo/BluetoothSocket;->d:Landroid/content/res/Resources;

    .line 62
    invoke-static {p2}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Slice;

    iput-object p1, p0, Lo/BluetoothSocket;->e:Lo/Slice;

    return-void
.end method

.method public static e(Landroid/content/res/Resources;Lo/Slice;)Lo/Slice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lo/Slice<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lo/Slice<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lo/BluetoothSocket;

    invoke-direct {v0, p0, p1}, Lo/BluetoothSocket;-><init>(Landroid/content/res/Resources;Lo/Slice;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .line 74
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lo/BluetoothSocket;->d:Landroid/content/res/Resources;

    iget-object v2, p0, Lo/BluetoothSocket;->e:Lo/Slice;

    invoke-interface {v2}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 89
    iget-object v0, p0, Lo/BluetoothSocket;->e:Lo/Slice;

    instance-of v1, v0, Lo/TransactionExecutor;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lo/TransactionExecutor;

    invoke-interface {v0}, Lo/TransactionExecutor;->b()V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 68
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lo/BluetoothSocket;->a()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 79
    iget-object v0, p0, Lo/BluetoothSocket;->e:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->e()I

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/BluetoothSocket;->e:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->j()V

    return-void
.end method

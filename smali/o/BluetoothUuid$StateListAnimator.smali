.class Lo/BluetoothUuid$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothProfile$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final d:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

.field private final e:Lo/BaseParceledListSlice;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lo/BaseParceledListSlice;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lo/BluetoothUuid$StateListAnimator;->d:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 82
    iput-object p2, p0, Lo/BluetoothUuid$StateListAnimator;->e:Lo/BaseParceledListSlice;

    return-void
.end method


# virtual methods
.method public b(Lo/RulesUpdaterContract;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/BluetoothUuid$StateListAnimator;->e:Lo/BaseParceledListSlice;

    invoke-virtual {v0}, Lo/BaseParceledListSlice;->a()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 102
    invoke-interface {p1, p2}, Lo/RulesUpdaterContract;->b(Landroid/graphics/Bitmap;)V

    .line 104
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 90
    iget-object v0, p0, Lo/BluetoothUuid$StateListAnimator;->d:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->e()V

    return-void
.end method

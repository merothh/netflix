.class final Lo/DexFile$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field final a:Landroid/graphics/Typeface;

.field final e:I


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lo/DexFile$StateListAnimator;->a:Landroid/graphics/Typeface;

    .line 213
    iput p2, p0, Lo/DexFile$StateListAnimator;->e:I

    return-void
.end method

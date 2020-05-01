.class public final Lcom/crittercism/internal/bv$n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bu;


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/bv$n;->a:Ljava/lang/Integer;

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    iget v1, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v2, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bv$n;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "memory_usage"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/bv$n;->a:Ljava/lang/Integer;

    return-object v0
.end method

.class public Lorg/chromium/base/task/TaskTraits;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BEST_EFFORT:Lorg/chromium/base/task/TaskTraits;

.field public static final BEST_EFFORT_MAY_BLOCK:Lorg/chromium/base/task/TaskTraits;

.field public static final CHOREOGRAPHER_FRAME:Lorg/chromium/base/task/TaskTraits;

.field public static final THREAD_POOL:Lorg/chromium/base/task/TaskTraits;

.field public static final THREAD_POOL_BEST_EFFORT:Lorg/chromium/base/task/TaskTraits;

.field public static final THREAD_POOL_USER_BLOCKING:Lorg/chromium/base/task/TaskTraits;

.field public static final THREAD_POOL_USER_VISIBLE:Lorg/chromium/base/task/TaskTraits;

.field public static final USER_BLOCKING:Lorg/chromium/base/task/TaskTraits;

.field public static final USER_BLOCKING_MAY_BLOCK:Lorg/chromium/base/task/TaskTraits;

.field public static final USER_VISIBLE:Lorg/chromium/base/task/TaskTraits;

.field public static final USER_VISIBLE_MAY_BLOCK:Lorg/chromium/base/task/TaskTraits;


# instance fields
.field mExtensionData:[B

.field mExtensionId:B

.field mIsChoreographerFrame:Z

.field mMayBlock:Z

.field mPriority:I

.field mPrioritySetExplicitly:Z

.field mUseThreadPool:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lorg/chromium/base/task/TaskTraits;

    invoke-direct {v0}, Lorg/chromium/base/task/TaskTraits;-><init>()V

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lorg/chromium/base/task/TaskTraits;->taskPriority(I)Lorg/chromium/base/task/TaskTraits;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->BEST_EFFORT:Lorg/chromium/base/task/TaskTraits;

    .line 36
    sget-object v0, Lorg/chromium/base/task/TaskTraits;->BEST_EFFORT:Lorg/chromium/base/task/TaskTraits;

    invoke-virtual {v0}, Lorg/chromium/base/task/TaskTraits;->mayBlock()Lorg/chromium/base/task/TaskTraits;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->BEST_EFFORT_MAY_BLOCK:Lorg/chromium/base/task/TaskTraits;

    .line 45
    new-instance v0, Lorg/chromium/base/task/TaskTraits;

    invoke-direct {v0}, Lorg/chromium/base/task/TaskTraits;-><init>()V

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v2}, Lorg/chromium/base/task/TaskTraits;->taskPriority(I)Lorg/chromium/base/task/TaskTraits;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->USER_VISIBLE:Lorg/chromium/base/task/TaskTraits;

    .line 49
    sget-object v0, Lorg/chromium/base/task/TaskTraits;->USER_VISIBLE:Lorg/chromium/base/task/TaskTraits;

    invoke-virtual {v0}, Lorg/chromium/base/task/TaskTraits;->mayBlock()Lorg/chromium/base/task/TaskTraits;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->USER_VISIBLE_MAY_BLOCK:Lorg/chromium/base/task/TaskTraits;

    .line 53
    new-instance v0, Lorg/chromium/base/task/TaskTraits;

    invoke-direct {v0}, Lorg/chromium/base/task/TaskTraits;-><init>()V

    const/4 v3, 0x2

    .line 54
    invoke-virtual {v0, v3}, Lorg/chromium/base/task/TaskTraits;->taskPriority(I)Lorg/chromium/base/task/TaskTraits;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->USER_BLOCKING:Lorg/chromium/base/task/TaskTraits;

    .line 57
    sget-object v0, Lorg/chromium/base/task/TaskTraits;->USER_BLOCKING:Lorg/chromium/base/task/TaskTraits;

    invoke-virtual {v0}, Lorg/chromium/base/task/TaskTraits;->mayBlock()Lorg/chromium/base/task/TaskTraits;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->USER_BLOCKING_MAY_BLOCK:Lorg/chromium/base/task/TaskTraits;

    .line 61
    new-instance v0, Lorg/chromium/base/task/TaskTraits;

    invoke-direct {v0}, Lorg/chromium/base/task/TaskTraits;-><init>()V

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->CHOREOGRAPHER_FRAME:Lorg/chromium/base/task/TaskTraits;

    .line 63
    sget-object v0, Lorg/chromium/base/task/TaskTraits;->CHOREOGRAPHER_FRAME:Lorg/chromium/base/task/TaskTraits;

    iput-boolean v2, v0, Lorg/chromium/base/task/TaskTraits;->mIsChoreographerFrame:Z

    .line 71
    new-instance v0, Lorg/chromium/base/task/TaskTraits;

    invoke-direct {v0}, Lorg/chromium/base/task/TaskTraits;-><init>()V

    invoke-virtual {v0}, Lorg/chromium/base/task/TaskTraits;->threadPool()Lorg/chromium/base/task/TaskTraits;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->THREAD_POOL:Lorg/chromium/base/task/TaskTraits;

    .line 72
    sget-object v0, Lorg/chromium/base/task/TaskTraits;->THREAD_POOL:Lorg/chromium/base/task/TaskTraits;

    .line 73
    invoke-virtual {v0, v3}, Lorg/chromium/base/task/TaskTraits;->taskPriority(I)Lorg/chromium/base/task/TaskTraits;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->THREAD_POOL_USER_BLOCKING:Lorg/chromium/base/task/TaskTraits;

    .line 74
    sget-object v0, Lorg/chromium/base/task/TaskTraits;->THREAD_POOL:Lorg/chromium/base/task/TaskTraits;

    .line 75
    invoke-virtual {v0, v2}, Lorg/chromium/base/task/TaskTraits;->taskPriority(I)Lorg/chromium/base/task/TaskTraits;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->THREAD_POOL_USER_VISIBLE:Lorg/chromium/base/task/TaskTraits;

    .line 76
    sget-object v0, Lorg/chromium/base/task/TaskTraits;->THREAD_POOL:Lorg/chromium/base/task/TaskTraits;

    .line 77
    invoke-virtual {v0, v1}, Lorg/chromium/base/task/TaskTraits;->taskPriority(I)Lorg/chromium/base/task/TaskTraits;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/TaskTraits;->THREAD_POOL_BEST_EFFORT:Lorg/chromium/base/task/TaskTraits;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 91
    iput v0, p0, Lorg/chromium/base/task/TaskTraits;->mPriority:I

    return-void
.end method

.method private constructor <init>(Lorg/chromium/base/task/TaskTraits;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget-boolean v0, p1, Lorg/chromium/base/task/TaskTraits;->mPrioritySetExplicitly:Z

    iput-boolean v0, p0, Lorg/chromium/base/task/TaskTraits;->mPrioritySetExplicitly:Z

    .line 96
    iget v0, p1, Lorg/chromium/base/task/TaskTraits;->mPriority:I

    iput v0, p0, Lorg/chromium/base/task/TaskTraits;->mPriority:I

    .line 97
    iget-boolean v0, p1, Lorg/chromium/base/task/TaskTraits;->mMayBlock:Z

    iput-boolean v0, p0, Lorg/chromium/base/task/TaskTraits;->mMayBlock:Z

    .line 98
    iget-boolean v0, p1, Lorg/chromium/base/task/TaskTraits;->mUseThreadPool:Z

    iput-boolean v0, p0, Lorg/chromium/base/task/TaskTraits;->mUseThreadPool:Z

    .line 99
    iget-byte v0, p1, Lorg/chromium/base/task/TaskTraits;->mExtensionId:B

    iput-byte v0, p0, Lorg/chromium/base/task/TaskTraits;->mExtensionId:B

    .line 100
    iget-object p1, p1, Lorg/chromium/base/task/TaskTraits;->mExtensionData:[B

    iput-object p1, p0, Lorg/chromium/base/task/TaskTraits;->mExtensionData:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 166
    :cond_0
    instance-of v1, p1, Lorg/chromium/base/task/TaskTraits;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 167
    check-cast p1, Lorg/chromium/base/task/TaskTraits;

    .line 168
    iget-boolean v1, p0, Lorg/chromium/base/task/TaskTraits;->mPrioritySetExplicitly:Z

    iget-boolean v3, p1, Lorg/chromium/base/task/TaskTraits;->mPrioritySetExplicitly:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/chromium/base/task/TaskTraits;->mPriority:I

    iget v3, p1, Lorg/chromium/base/task/TaskTraits;->mPriority:I

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lorg/chromium/base/task/TaskTraits;->mExtensionId:B

    iget-byte v3, p1, Lorg/chromium/base/task/TaskTraits;->mExtensionId:B

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/chromium/base/task/TaskTraits;->mExtensionData:[B

    iget-object p1, p1, Lorg/chromium/base/task/TaskTraits;->mExtensionData:[B

    .line 170
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hasExtension()Z
    .locals 1

    .line 133
    iget-byte v0, p0, Lorg/chromium/base/task/TaskTraits;->mExtensionId:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 179
    iget-boolean v0, p0, Lorg/chromium/base/task/TaskTraits;->mPrioritySetExplicitly:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x47b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 180
    iget v0, p0, Lorg/chromium/base/task/TaskTraits;->mPriority:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 181
    iget-boolean v0, p0, Lorg/chromium/base/task/TaskTraits;->mMayBlock:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 182
    iget-boolean v0, p0, Lorg/chromium/base/task/TaskTraits;->mUseThreadPool:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 183
    iget-byte v0, p0, Lorg/chromium/base/task/TaskTraits;->mExtensionId:B

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 184
    iget-object v0, p0, Lorg/chromium/base/task/TaskTraits;->mExtensionData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 185
    iget-boolean v0, p0, Lorg/chromium/base/task/TaskTraits;->mIsChoreographerFrame:Z

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public mayBlock()Lorg/chromium/base/task/TaskTraits;
    .locals 2

    .line 118
    new-instance v0, Lorg/chromium/base/task/TaskTraits;

    invoke-direct {v0, p0}, Lorg/chromium/base/task/TaskTraits;-><init>(Lorg/chromium/base/task/TaskTraits;)V

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, v0, Lorg/chromium/base/task/TaskTraits;->mMayBlock:Z

    return-object v0
.end method

.method public taskPriority(I)Lorg/chromium/base/task/TaskTraits;
    .locals 2

    .line 104
    new-instance v0, Lorg/chromium/base/task/TaskTraits;

    invoke-direct {v0, p0}, Lorg/chromium/base/task/TaskTraits;-><init>(Lorg/chromium/base/task/TaskTraits;)V

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, v0, Lorg/chromium/base/task/TaskTraits;->mPrioritySetExplicitly:Z

    .line 106
    iput p1, v0, Lorg/chromium/base/task/TaskTraits;->mPriority:I

    return-object v0
.end method

.method public threadPool()Lorg/chromium/base/task/TaskTraits;
    .locals 2

    .line 124
    new-instance v0, Lorg/chromium/base/task/TaskTraits;

    invoke-direct {v0, p0}, Lorg/chromium/base/task/TaskTraits;-><init>(Lorg/chromium/base/task/TaskTraits;)V

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, v0, Lorg/chromium/base/task/TaskTraits;->mUseThreadPool:Z

    return-object v0
.end method

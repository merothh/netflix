.class public abstract Lo/DiskWriteViolation;
.super Lo/StorageManager;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lo/StorageManager;-><init>(Lo/amc;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/DiskWriteViolation;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lo/DiskWriteViolation;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

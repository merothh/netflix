.class public final Lo/StorageManagerInternal;
.super Lo/DiskWriteViolation;
.source ""


# static fields
.field public static final b:Lo/StorageManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lo/StorageManagerInternal;

    invoke-direct {v0}, Lo/StorageManagerInternal;-><init>()V

    sput-object v0, Lo/StorageManagerInternal;->b:Lo/StorageManagerInternal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lo/DiskWriteViolation;-><init>(Lo/amc;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lo/StorageManagerInternal;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

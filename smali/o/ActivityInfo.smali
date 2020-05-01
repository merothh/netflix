.class public final Lo/ActivityInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileBackupHelperBase;


# static fields
.field private static final d:Lo/ActivityInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/ActivityInfo;

    invoke-direct {v0}, Lo/ActivityInfo;-><init>()V

    sput-object v0, Lo/ActivityInfo;->d:Lo/ActivityInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lo/ActivityInfo;
    .locals 1

    .line 15
    sget-object v0, Lo/ActivityInfo;->d:Lo/ActivityInfo;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method

.class public final Lo/StrictJarFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/ZipUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lo/StrictJarFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/StrictJarFile;

    invoke-direct {v0}, Lo/StrictJarFile;-><init>()V

    sput-object v0, Lo/StrictJarFile;->d:Lo/StrictJarFile;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lo/StrictJarFile;
    .locals 1

    .line 19
    sget-object v0, Lo/StrictJarFile;->d:Lo/StrictJarFile;

    return-object v0
.end method


# virtual methods
.method public e()Lo/ZipUtils;
    .locals 1

    .line 15
    new-instance v0, Lo/ZipUtils;

    invoke-direct {v0}, Lo/ZipUtils;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/StrictJarFile;->e()Lo/ZipUtils;

    move-result-object v0

    return-object v0
.end method

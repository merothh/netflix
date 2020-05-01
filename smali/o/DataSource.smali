.class public final Lo/DataSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/VerbatimX509Certificate;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lo/DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/DataSource;

    invoke-direct {v0}, Lo/DataSource;-><init>()V

    sput-object v0, Lo/DataSource;->d:Lo/DataSource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/DataSource;
    .locals 1

    .line 19
    sget-object v0, Lo/DataSource;->d:Lo/DataSource;

    return-object v0
.end method


# virtual methods
.method public c()Lo/VerbatimX509Certificate;
    .locals 1

    .line 15
    new-instance v0, Lo/VerbatimX509Certificate;

    invoke-direct {v0}, Lo/VerbatimX509Certificate;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/DataSource;->c()Lo/VerbatimX509Certificate;

    move-result-object v0

    return-object v0
.end method

.class public Lo/UriMatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsQueryHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UriMatcher$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AppsQueryHelper<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final b:Lo/AndroidTestBaseUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AndroidTestBaseUpdater<",
            "*>;"
        }
    .end annotation
.end field

.field static final c:Lo/UriMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UriMatcher<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/UriMatcher;

    invoke-direct {v0}, Lo/UriMatcher;-><init>()V

    sput-object v0, Lo/UriMatcher;->c:Lo/UriMatcher;

    .line 15
    new-instance v0, Lo/UriMatcher$Application;

    invoke-direct {v0}, Lo/UriMatcher$Application;-><init>()V

    sput-object v0, Lo/UriMatcher;->b:Lo/AndroidTestBaseUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/AndroidTestBaseUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/AndroidTestBaseUpdater<",
            "TR;>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lo/UriMatcher;->b:Lo/AndroidTestBaseUpdater;

    return-object v0
.end method

.method public static e()Lo/AppsQueryHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/AppsQueryHelper<",
            "TR;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lo/UriMatcher;->c:Lo/UriMatcher;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lo/AppsQueryHelper$Application;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

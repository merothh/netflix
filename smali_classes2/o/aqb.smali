.class public final Lo/aqb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aqg;


# static fields
.field public static final a:Lo/aqb;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lo/aqb;

    invoke-direct {v0}, Lo/aqb;-><init>()V

    sput-object v0, Lo/aqb;->a:Lo/aqb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    .line 70
    sget v0, Lo/aqb;->b:I

    return v0
.end method

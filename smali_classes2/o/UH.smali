.class public final Lo/UH;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final e:Lo/UH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lo/UH;

    invoke-direct {v0}, Lo/UH;-><init>()V

    sput-object v0, Lo/UH;->e:Lo/UH;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Z)Lo/UG;
    .locals 0

    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Lo/UF;

    invoke-direct {p1}, Lo/UF;-><init>()V

    check-cast p1, Lo/UG;

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lo/UG;

    invoke-direct {p1}, Lo/UG;-><init>()V

    :goto_0
    return-object p1
.end method

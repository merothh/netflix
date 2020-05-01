.class public final Lo/amt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lo/amt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/amt;

    invoke-direct {v0}, Lo/amt;-><init>()V

    sput-object v0, Lo/amt;->c:Lo/amt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lo/amB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/amB<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lo/amv;

    invoke-direct {v0}, Lo/amv;-><init>()V

    check-cast v0, Lo/amB;

    return-object v0
.end method

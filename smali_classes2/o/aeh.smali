.class public final Lo/aeh;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/AL;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lo/aeh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/aeh;

    invoke-direct {v0}, Lo/aeh;-><init>()V

    sput-object v0, Lo/aeh;->e:Lo/aeh;

    .line 12
    new-instance v0, Lo/adn;

    invoke-direct {v0}, Lo/adn;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    sput-object v0, Lo/aeh;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lo/AL;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object v0, Lo/aeh;->a:Ljava/util/Comparator;

    return-object v0
.end method

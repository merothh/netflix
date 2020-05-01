.class public final Lo/aoI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aor;


# static fields
.field public static final b:Lo/aoI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lo/aoI;

    invoke-direct {v0}, Lo/aoI;-><init>()V

    sput-object v0, Lo/aoI;->b:Lo/aoI;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lo/alj;
    .locals 1

    .line 137
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lo/alj;

    return-object v0
.end method

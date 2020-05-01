.class public final Lo/TransitionValues;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/TransitionPropagation;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lo/TransitionValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/TransitionValues;

    invoke-direct {v0}, Lo/TransitionValues;-><init>()V

    sput-object v0, Lo/TransitionValues;->c:Lo/TransitionValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lo/TransitionValues;
    .locals 1

    .line 19
    sget-object v0, Lo/TransitionValues;->c:Lo/TransitionValues;

    return-object v0
.end method


# virtual methods
.method public a()Lo/TransitionPropagation;
    .locals 1

    .line 15
    new-instance v0, Lo/TransitionPropagation;

    invoke-direct {v0}, Lo/TransitionPropagation;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/TransitionValues;->a()Lo/TransitionPropagation;

    move-result-object v0

    return-object v0
.end method

.class public final Lo/aoU$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/alj$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aoU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/alj$Application<",
        "Lo/aoU;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Lo/aoU$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lo/aoU$ActionBar;

    invoke-direct {v0}, Lo/aoU$ActionBar;-><init>()V

    sput-object v0, Lo/aoU$ActionBar;->a:Lo/aoU$ActionBar;

    .line 95
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->b:Lkotlinx/coroutines/CoroutineExceptionHandler$ActionBar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

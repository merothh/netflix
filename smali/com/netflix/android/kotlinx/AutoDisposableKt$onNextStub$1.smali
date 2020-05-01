.class public final Lcom/netflix/android/kotlinx/AutoDisposableKt$onNextStub$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Object;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/android/kotlinx/AutoDisposableKt$onNextStub$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/android/kotlinx/AutoDisposableKt$onNextStub$1;

    invoke-direct {v0}, Lcom/netflix/android/kotlinx/AutoDisposableKt$onNextStub$1;-><init>()V

    sput-object v0, Lcom/netflix/android/kotlinx/AutoDisposableKt$onNextStub$1;->d:Lcom/netflix/android/kotlinx/AutoDisposableKt$onNextStub$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/android/kotlinx/AutoDisposableKt$onNextStub$1;->a(Ljava/lang/Object;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

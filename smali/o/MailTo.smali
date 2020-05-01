.class public Lo/MailTo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final a:Ljava/util/function/Consumer;

.field private final c:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/MailTo;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lo/MailTo;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/MailTo;->a:Ljava/util/function/Consumer;

    iget-object v1, p0, Lo/MailTo;->c:Ljava/util/function/Function;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CollectSpliterators$1;->b(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

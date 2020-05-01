.class Lo/JA;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cb;


# instance fields
.field private final c:Lo/Jw;


# direct methods
.method public constructor <init>(Lo/Jw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/JA;->c:Lo/Jw;

    return-void
.end method


# virtual methods
.method public onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 1

    iget-object v0, p0, Lo/JA;->c:Lo/Jw;

    invoke-static {v0, p1, p2, p3}, Lo/Jw;->b(Lo/Jw;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    return-void
.end method

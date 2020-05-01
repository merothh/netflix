.class public Lo/Kq;
.super Ljava/lang/Object;

# interfaces
.implements Lo/alB;


# instance fields
.field private final c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Kq;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/Kq;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    move-result-object v0

    return-object v0
.end method

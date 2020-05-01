.class public Lo/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/netflix/mediaclient/media/BookmarkStoreRoom;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/BookmarkStoreRoom;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/h;->a:Lcom/netflix/mediaclient/media/BookmarkStoreRoom;

    iput-object p2, p0, Lo/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/h;->a:Lcom/netflix/mediaclient/media/BookmarkStoreRoom;

    iget-object v1, p0, Lo/h;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->d(Lcom/netflix/mediaclient/media/BookmarkStoreRoom;Landroid/content/Context;)V

    return-void
.end method

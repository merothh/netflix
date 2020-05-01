.class Lo/Ok;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Landroid/app/Notification$Builder;

.field private final b:Landroid/content/Context;

.field private final c:I

.field private final e:Lcom/netflix/mediaclient/service/pushnotification/Payload;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ok;->b:Landroid/content/Context;

    iput-object p2, p0, Lo/Ok;->e:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iput-object p3, p0, Lo/Ok;->a:Landroid/app/Notification$Builder;

    iput p4, p0, Lo/Ok;->c:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lo/Ok;->b:Landroid/content/Context;

    iget-object v1, p0, Lo/Ok;->e:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iget-object v2, p0, Lo/Ok;->a:Landroid/app/Notification$Builder;

    iget v3, p0, Lo/Ok;->c:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3, p1}, Lo/Om;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILjava/lang/Throwable;)V

    return-void
.end method

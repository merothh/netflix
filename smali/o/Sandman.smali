.class public Lo/Sandman;
.super Ljava/lang/Object;

# interfaces
.implements Lo/BrowserContract$ActionBar;


# instance fields
.field private final e:Lcom/netflix/mediaclient/NetflixApplication;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Sandman;->e:Lcom/netflix/mediaclient/NetflixApplication;

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-object v0, p0, Lo/Sandman;->e:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {v0}, Lcom/netflix/mediaclient/NetflixApplication;->c(Lcom/netflix/mediaclient/NetflixApplication;)J

    move-result-wide v0

    return-wide v0
.end method

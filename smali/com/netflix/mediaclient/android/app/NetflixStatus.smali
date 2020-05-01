.class public Lcom/netflix/mediaclient/android/app/NetflixStatus;
.super Lcom/netflix/mediaclient/android/app/BaseStatus;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x471447e20c9b795dL


# instance fields
.field protected a:Z

.field protected transient b:Lcom/netflix/cl/model/Error;

.field protected e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 1

    const v0, 0x7fffffff

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;I)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;-><init>()V

    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    .line 66
    iput p2, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->f:I

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status code can not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    .locals 1

    const v0, 0x7fffffff

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;I)V

    .line 81
    iput-object p2, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->f:I

    return-void
.end method

.method public c(Lcom/netflix/cl/model/Error;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->b:Lcom/netflix/cl/model/Error;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->a:Z

    return-void
.end method

.method public h()Lcom/netflix/cl/model/Error;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->b:Lcom/netflix/cl/model/Error;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->a:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetflixStatus, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

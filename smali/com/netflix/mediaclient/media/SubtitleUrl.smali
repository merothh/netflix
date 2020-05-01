.class public Lcom/netflix/mediaclient/media/SubtitleUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ATTR_CDN_ID:Ljava/lang/String; = "cdnId"

.field private static final ATTR_DECRYPTION_KEY:Ljava/lang/String; = "decryptionKey"

.field private static final ATTR_DOWNLOADABLE_ID:Ljava/lang/String; = "downloadableId"

.field private static final ATTR_MASTER_INDEX_OFFSET:Ljava/lang/String; = "masterIndexOffset"

.field private static final ATTR_MASTER_INDEX_SIZE:Ljava/lang/String; = "masterIndexSize"

.field private static final ATTR_PROFILE:Ljava/lang/String; = "profile"

.field private static final ATTR_URL:Ljava/lang/String; = "url"

.field private static final ATTR_XID:Ljava/lang/String; = "xid"

.field private static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field private mCdnId:J

.field private mDecryptionKey:Ljava/lang/String;

.field private mDownloadableId:Ljava/lang/String;

.field private mMasterIndexOffset:I

.field private mMasterIndexSize:I

.field private mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field private mSize:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;JLjava/lang/String;J)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mSize:J

    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 82
    iput-wide p3, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    .line 83
    iput-object p5, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    .line 84
    iput-wide p6, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mSize:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mSize:J

    .line 57
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->populate(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 99
    :cond_1
    check-cast p1, Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 101
    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    iget v3, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    if-eq v2, v3, :cond_2

    return v1

    .line 102
    :cond_2
    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    iget v3, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    if-eq v2, v3, :cond_3

    return v1

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 104
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_1
    return v1

    .line 106
    :cond_7
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    iget-wide v4, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    return v1

    .line 107
    :cond_8
    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    iget-object p1, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v2, p1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_a
    :goto_3
    return v1
.end method

.method public getCdnId()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    return-wide v0
.end method

.method public getDecryptionKey()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterIndexOffset()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    return v0
.end method

.method public getMasterIndexSize()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    return v0
.end method

.method public getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mSize:J

    return-wide v0
.end method

.method public getSubtitleProfile()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "url"

    .line 62
    invoke-static {p1, v1, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    const-string v1, "profile"

    .line 63
    invoke-static {p1, v1, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string v1, "cdnId"

    const-wide/16 v2, 0x0

    .line 65
    invoke-static {p1, v1, v2, v3}, Lo/adN;->d(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    const-string v1, "downloadableId"

    .line 66
    invoke-static {p1, v1, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->b:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->i:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "masterIndexSize"

    .line 70
    invoke-static {p1, v2, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    const-string v2, "masterIndexOffset"

    .line 71
    invoke-static {p1, v2, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    :cond_1
    const-string v1, "decryptionKey"

    .line 74
    invoke-static {p1, v1, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    return-void
.end method

.method public setDecryptionKey(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    return-void
.end method

.method public setMasterIndex(II)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    .line 91
    iput p2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "url"

    .line 158
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    iget-wide v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    const-string v3, "cdnId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 162
    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    const-string v2, "downloadableId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->b:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->i:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v1, v2, :cond_2

    .line 165
    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    const-string v2, "masterIndexOffset"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    iget v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    const-string v2, "masterIndexSize"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "decryptionKey"

    .line 169
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubtitleUrl{mUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDownloadableId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCdnId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mMasterIndexSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMasterIndexOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDecryptionKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

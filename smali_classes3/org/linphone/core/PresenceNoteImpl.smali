.class public Lorg/linphone/core/PresenceNoteImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/PresenceNote;


# instance fields
.field private mNativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/linphone/core/PresenceNoteImpl;->mNativePtr:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/PresenceNoteImpl;->newPresenceNoteImpl(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/linphone/core/PresenceNoteImpl;->mNativePtr:J

    return-void
.end method

.method private native getContent(J)Ljava/lang/String;
.end method

.method private native getLang(J)Ljava/lang/String;
.end method

.method private native newPresenceNoteImpl(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native setContent(JLjava/lang/String;)I
.end method

.method private native setLang(JLjava/lang/String;)I
.end method

.method private native unref(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/linphone/core/PresenceNoteImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceNoteImpl;->unref(J)V

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/linphone/core/PresenceNoteImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceNoteImpl;->getContent(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 2

    .line 54
    iget-wide v0, p0, Lorg/linphone/core/PresenceNoteImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceNoteImpl;->getLang(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lorg/linphone/core/PresenceNoteImpl;->mNativePtr:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)I
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/linphone/core/PresenceNoteImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/PresenceNoteImpl;->setContent(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLang(Ljava/lang/String;)I
    .locals 2

    .line 60
    iget-wide v0, p0, Lorg/linphone/core/PresenceNoteImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/PresenceNoteImpl;->setLang(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.class public Lo/xM;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lo/xI;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Float;

.field private g:Ljava/lang/Float;

.field private h:Ljava/lang/Float;

.field private i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lo/xM;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharStyle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharSize()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharOpacity()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowOpacity()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 253
    :cond_1
    new-instance v0, Lo/xM;

    invoke-direct {v0}, Lo/xM;-><init>()V

    .line 256
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 257
    :cond_2
    invoke-static {}, Lo/xI;->d()Lo/xI;

    move-result-object v1

    .line 258
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 259
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeAttrs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/xI;->e(Lcom/netflix/mediaclient/service/player/subtitles/text/CharacterEdgeTypeMapping;)V

    .line 261
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 262
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharEdgeColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 264
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/xI;->d(Ljava/lang/String;)V

    .line 267
    :cond_4
    iput-object v1, v0, Lo/xM;->d:Lo/xI;

    .line 271
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 272
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 274
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xM;->e:Ljava/lang/String;

    .line 277
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 278
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 280
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xM;->c:Ljava/lang/String;

    .line 283
    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 286
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/ColorMapping;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/xM;->b:Ljava/lang/String;

    .line 291
    :cond_8
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharStyle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 292
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    move-result-object v1

    iput-object v1, v0, Lo/xM;->i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 294
    :cond_9
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharSize()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 295
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/SizeMapping;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/xM;->a:Ljava/lang/Integer;

    .line 299
    :cond_a
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 300
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getCharOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->e(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lo/xM;->f:Ljava/lang/Float;

    .line 302
    :cond_b
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 303
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getWindowOpacity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->e(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lo/xM;->g:Ljava/lang/Float;

    .line 305
    :cond_c
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 306
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/subtitles/text/OpacityMapping;->e(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, v0, Lo/xM;->h:Ljava/lang/Float;

    :cond_d
    return-object v0
.end method


# virtual methods
.method public a()Lo/xI;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/xM;->d:Lo/xI;

    return-object v0
.end method

.method public a(Lo/xM;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lo/xM;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lo/xM;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 139
    iput-object v0, p0, Lo/xM;->e:Ljava/lang/String;

    .line 142
    :cond_1
    iget-object v0, p0, Lo/xM;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lo/xM;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 146
    iput-object v0, p0, Lo/xM;->c:Ljava/lang/String;

    .line 149
    :cond_2
    iget-object v0, p0, Lo/xM;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lo/xM;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 153
    iput-object v0, p0, Lo/xM;->b:Ljava/lang/String;

    .line 156
    :cond_3
    iget-object v0, p0, Lo/xM;->a:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lo/xM;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 158
    iput-object v0, p0, Lo/xM;->a:Ljava/lang/Integer;

    .line 161
    :cond_4
    iget-object v0, p0, Lo/xM;->d:Lo/xI;

    if-nez v0, :cond_5

    iget-object v0, p1, Lo/xM;->d:Lo/xI;

    if-eqz v0, :cond_5

    .line 163
    iput-object v0, p0, Lo/xM;->d:Lo/xI;

    .line 166
    :cond_5
    iget-object v0, p0, Lo/xM;->i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-nez v0, :cond_6

    iget-object v0, p1, Lo/xM;->i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-eqz v0, :cond_6

    .line 170
    iput-object v0, p0, Lo/xM;->i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    .line 173
    :cond_6
    iget-object v0, p0, Lo/xM;->f:Ljava/lang/Float;

    if-nez v0, :cond_7

    iget-object v0, p1, Lo/xM;->f:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 177
    iput-object v0, p0, Lo/xM;->f:Ljava/lang/Float;

    .line 180
    :cond_7
    iget-object v0, p0, Lo/xM;->g:Ljava/lang/Float;

    if-nez v0, :cond_8

    iget-object v0, p1, Lo/xM;->g:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 184
    iput-object v0, p0, Lo/xM;->g:Ljava/lang/Float;

    .line 187
    :cond_8
    iget-object v0, p0, Lo/xM;->h:Ljava/lang/Float;

    if-nez v0, :cond_9

    iget-object p1, p1, Lo/xM;->h:Ljava/lang/Float;

    if-eqz p1, :cond_9

    .line 191
    iput-object p1, p0, Lo/xM;->h:Ljava/lang/Float;

    :cond_9
    return-void
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/xM;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/xM;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/xM;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/xM;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/xM;->i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    return-object v0
.end method

.method public h()Ljava/lang/Float;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/xM;->g:Ljava/lang/Float;

    return-object v0
.end method

.method public i()Ljava/lang/Float;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/xM;->f:Ljava/lang/Float;

    return-object v0
.end method

.method public j()Ljava/lang/Float;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/xM;->h:Ljava/lang/Float;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextStyle ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lo/xM;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", Color="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/xM;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    iget-object v1, p0, Lo/xM;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", WindowColor="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/xM;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_1
    iget-object v1, p0, Lo/xM;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", BackgroundColor="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/xM;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_2
    iget-object v1, p0, Lo/xM;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string v1, ", FontSize="

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/xM;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    :cond_3
    iget-object v1, p0, Lo/xM;->i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    if-eqz v1, :cond_4

    const-string v1, ", FontFamily="

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/xM;->i:Lcom/netflix/mediaclient/service/player/subtitles/text/FontFamilyMapping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    :cond_4
    iget-object v1, p0, Lo/xM;->d:Lo/xI;

    if-eqz v1, :cond_5

    const-string v1, ", Outline="

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/xM;->d:Lo/xI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    :cond_5
    iget-object v1, p0, Lo/xM;->f:Ljava/lang/Float;

    if-eqz v1, :cond_6

    const-string v1, ", Opacity="

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/xM;->f:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    :cond_6
    iget-object v1, p0, Lo/xM;->g:Ljava/lang/Float;

    if-eqz v1, :cond_7

    const-string v1, ", WindowOpacity="

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/xM;->g:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    :cond_7
    iget-object v1, p0, Lo/xM;->h:Ljava/lang/Float;

    if-eqz v1, :cond_8

    const-string v1, ", BackgroundOpacity="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/xM;->h:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "]"

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

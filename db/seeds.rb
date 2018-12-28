# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
BodyArea.destroy_all
YogaPose.destroy_all
Routine.destroy_all
RoutinePose.destroy_all
User.destroy_all


BodyArea.create(name: "legs")
BodyArea.create(name: "abdominals")
BodyArea.create(name: "arms")
BodyArea.create(name: "back")
BodyArea.create(name: "hips")
BodyArea.create(name: "chest and shoulders")

YogaPose.create(name: "Downward Facing Dog", description: "sun-salutation pose", difficulty_level: 1, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1720/MTQ3MTU2NzMwOTA2NjgyODMw/2hp_290_1721_bjk.webp", body_area_id: 1)
YogaPose.create(name: "Standing Forward Bend", description: "stretch hamstrings, sun-salutation pose", difficulty_level: 1, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_800/MTQ2MTgwNzIwNzk5NTI0Mzg0/hpforwardbend2.webp", body_area_id: 1)
YogaPose.create(name: "Triangle", description: "helps alleviate stress and improve digestion", difficulty_level: 1, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1720/MTQ3MTc3OTY2Mjk4NzM2NDMx/2yp_285_1643_prf.webp", body_area_id: 1)
YogaPose.create(name: "Extended Side Angle", description: "great after extended sitting", difficulty_level: 1, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1720/MTQ3MTU0OTQxNTE1OTMzMTM0/2hp_291_1875_gn_bjk.webp", body_area_id: 1)

YogaPose.create(name: "Cat-Cow Stretch", description: "for spinal flexibility and abdominal strength", difficulty_level: 1, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1720/MTQ3MTU3MTAwMjczODcwMjg2/3hp_288_02_bjk2.webp", body_area_id: 2)
YogaPose.create(name: "Boat", description: "strengthening core to support lower back", difficulty_level: 2, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_440/MTQ2MTgwNzk2NDk2NjE5MDQw/story-image-18479.webp", body_area_id: 2)
YogaPose.create(name: "Handstand", description: "can modify with heels supported against wall", difficulty_level: 3, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1720/MTQ3MTc4MTY5MjM1OTQxMTY3/2yogapedia_274_13_fnl.webp", body_area_id: 2)
YogaPose.create(name: "Side Plank", description: "for a more advanced version, raise top leg perpendicular to floor", difficulty_level: 2, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1720/MTQ3MTc4MTA4ODM3OTYzNTY3/2hp_271_06_fnl.webp", body_area_id: 2)


YogaPose.create(name: "Dolphin Plank", description: "arms, core, leg strength", difficulty_level: 2, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1240/MTQ3MTU3Mjg5NTIwODY3MTE5/3anatomy_287_3356_bjk.webp", body_area_id: 3)
YogaPose.create(name: "Upward Facing Dog", description: "arm strength and chest opener", difficulty_level: 2, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1240/MTQ3MTUyNzM1MjQ0OTIwNjIz/updoghp2_292_37440_cmyk.webp", body_area_id: 3)
YogaPose.create(name: "Cow Face", description: "arms, chests, can use a prop for your arms", difficulty_level: 2, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_800/MTQ2MTgwNzY4ODQ2MjU5NzQ0/gomukhasana-eagle-arms-elena-brower.webp", body_area_id: 3)
YogaPose.create(name: "Eagle", description: "king of the birds", difficulty_level: 2, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1240/MTQ3MTUyNzM1MjQ1MDUxMzQy/eaglehp2_292_37370_cmyk.webp", body_area_id: 3)


YogaPose.create(name: "Pelvic Tilt", description: "helps loosen a stiff spine", difficulty_level: 1, img_url: "https://www.verywellfit.com/thmb/wyPhfTjc8KcENMS3KPAbocYcNkw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Verywell-01-3567179-Pelvic01-035copy-598a054603f402001097d22b.gif", body_area_id: 4)
YogaPose.create(name: "Child's Pose", description: "restful pose to have your body release and length into the floor", difficulty_level: 1, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_800/MTQ2MTgwNjczMjg2OTA3MzI1/childs-pose-balasana.webp", body_area_id: 4)
YogaPose.create(name: "Half Lord of the Fishes", description: "half spinal twist, can modify this to do in a chair", difficulty_level: 1, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_800/MTQ2MTgwNzY4NTc5Mzk3MTUy/half-lord-of-the-fishes-pose.webp", body_area_id: 4)
YogaPose.create(name: "Chair", description: "great for core and whole body", difficulty_level: 2, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1240/MTQ3MTUyNzM1MjQ1NDQ0NTU4/hp_292_267_bjk.webp", body_area_id: 4)

YogaPose.create(name: "Half-Moon Pose", description: "helps with balance", difficulty_level: 1, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1720/MTQ3MTU0OTQxNTE2MTMwMDk1/2hp_291_1860_gn_bjk.webp", body_area_id: 5)
YogaPose.create(name: "Warrior II", description: "hips point to the side, shin of bended knee perpendicular to the floor with the knee tracking over the middle toe of the right foot", difficulty_level: 1, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1720/MTQ3MTU0OTQxNTE1OTMzNDg3/2hp_291_1870_gn_bjk.webp", body_area_id: 5)
YogaPose.create(name: "Goddess", description: "squat, hip opener with other benefits such as leg and core strengthening ", difficulty_level: 2, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_800/MTQ2MTgwNzQyODA2OTcxOTM2/yoga-woman-in-squat-malasana-pose.webp", body_area_id: 5)
YogaPose.create(name: "Sleeping Pigeon", description: "releases tension from sitting", difficulty_level: 3, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_800/MTQ2MTgwNzUwMDU2NDk4NjIx/yp_282_0141_fnl-sleeping-pigeon-pose-jason-crandell.webp", body_area_id: 5)

YogaPose.create(name: "Heart Opening", description: "Modified with a block underneath, deceptively simple but powerful", difficulty_level: 1, img_url: "https://www.verywellfit.com/thmb/klsrIgdty7_82t7YU4oTYVfgGoo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/bolster-56aa41e25f9b58b7d00354ce.jpg", body_area_id: 6)
YogaPose.create(name: "Noose", description: "advanced, hands are clasped behind the back", difficulty_level: 3, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_800/MTQ2MTgwNjcyMjA4MzE1OTM2/noose-pose-pasasana.webp", body_area_id: 6)
YogaPose.create(name: "Extended Side Angle", description: "you can also keep your hand on your hip", difficulty_level: 2, img_url: "https://www.yogajournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1240/MTQ3MTU0OTQxNTE1OTMzMTM0/2hp_291_1875_gn_bjk.webp", body_area_id: 6)
YogaPose.create(name: "Knees to Chest", description: "great for shoulder relaxation", difficulty_level: 1, img_url: "https://www.yogajournal.com/.image/ar_3:2%2Cc_limit%2Ccs_srgb%2Cq_auto:good%2Cw_800/MTQ2MTgwNjczMjkyNjc0NTky/kneestochestpose-march.gif", body_area_id: 6)

